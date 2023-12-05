package test

import (
	"github.com/astaxie/beego/logs"
	"net/http"
	"net/http/httptest"
	_ "opms/routers"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/astaxie/beego"
	. "github.com/smartystreets/goconvey/convey"
)

func init() {
	_, file, _, _ := runtime.Caller(1)
	appPath, _ := filepath.Abs(filepath.Dir(filepath.Join(file, ".."+string(filepath.Separator))))
	beego.TestBeegoInit(appPath)
}

// TestMain is a sample to run an endpoint test
func TestMain(m *testing.M) {
	r, _ := http.NewRequest("GET", "/", nil)
	w := httptest.NewRecorder()
	logger := logs.NewLogger(10000)
	_ = logger.SetLogger("console", "")
	beego.BeeApp.Handlers.ServeHTTP(w, r)

	logger.Trace("testing", "TestMain", "Code[%d]\n%s", w.Code, w.Body.String())

	// todo 这里原本的 r 参数是 t，不知道哪来的，我改成 r 了，未测试
	Convey("Subject: Test Station Endpoint\n", r, func() {
		Convey("Status Code Should Be 200", func() {
			So(w.Code, ShouldEqual, 200)
		})
		Convey("The Result Should Not Be Empty", func() {
			So(w.Body.Len(), ShouldBeGreaterThan, 0)
		})
	})
}
