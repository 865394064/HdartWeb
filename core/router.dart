import 'middleware.dart';
import 'route.dart';

/**路由器 */
class Router {
  List<Route> routes = [];
  Middleware middleware;
  Router({middleware}){
    this.middleware=middleware;
  }
  /**post方法 */
  POST(String uri, Function fn, {middleware}) {
    if (middleware != null) {
      _addRoute(new Route('POST', uri, fn, middleware: middleware));
    } else {
      _addRoute(new Route('POST', uri, fn));
    }
  }

  /**get方法 */
  GET(String uri, Function fn, {Middleware middleware}) {
    if (middleware != null) {
      _addRoute(new Route('GET', uri, fn, middleware: middleware));
    } else {
      _addRoute(new Route('GET', uri, fn));
    }
  }

  /**添加路由节点 */
  _addRoute(route) {
    routes.add(route);
  }

  /**使用全局中间件 */
  // use(this.middleware){

  // }

  List<Route> GetRoutes() {
    return routes;
  }
}
