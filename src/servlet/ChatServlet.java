package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Chat;
import model.Post;

@WebServlet("/Chat-1.0")
public class ChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		ServletContext context = request.getServletContext();
		RequestDispatcher dispatcher = request.getRequestDispatcher("chat.jsp");

		if (dispatcher != null) {

			List<Post> posts = new ArrayList<Post>();
			Chat chat = new Chat(posts);

			Post post = new Post();
			String nick = "";
			String content = request.getParameter("content");
			List<String> messages = new ArrayList<>();

			if (context.getAttribute("chat") == null) {

				nick = request.getParameter("nick");
				post.setNick(nick);
				chat.getPosts().add(post);
				session.setAttribute("post", post);
				context.setAttribute("chat", chat);
			} else {
				if (session.getAttribute("post") == null) {
					nick = request.getParameter("nick");
					post.setNick(nick);

					session.setAttribute("post", post);
				} else {
				
					chat = (Chat) context.getAttribute("chat");
					post = (Post) session.getAttribute("post");
					if (content != null) {
						if (post.getContent() != null) {
							for (String message : post.getContent()) {
								messages.add(message);
							}
						}
						messages.add(content);
						post.setContent(messages);
					}
					
					if(chat.getPosts().size() == 0) {
						posts.add(post);
					} else {
						if(chat.getPosts().contains(post)) {
							for (Post p : chat.getPosts()) {
								if(p.getNick().equals(post.getNick())) {
									posts.add(post);
								} else {
									posts.add(p);
								}
							}
						} else {
							for (Post p : chat.getPosts()) {
								posts.add(p);
							}
							posts.add(post);
						}
						
					}
					
					chat = new Chat();

					chat.setPosts(posts);
					context.setAttribute("chat", chat);
				}
			}

			dispatcher.forward(request, response);
		} else {
			response.getWriter().print("nie ma dispaczera");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
