package test1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=utf-8");
		//创建获取保存用户的session
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		if(user==null) {
			response.getWriter().print("您还没有登录<a href='/Test1/login.html'>登录</a>");
		}else {
			response.getWriter().print("登录成功"+user.getUsername()+"!");
		}
		response.getWriter().print("<a href='/Test1/LogoutServlet'>退出</a>");
		//创建cookie来存放session标示号
		Cookie cookie=new Cookie("JESSIONID",session.getId());
		cookie.setMaxAge(60*30);
		cookie.setPath("/Test1");
		response.addCookie(cookie);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
