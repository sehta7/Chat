package model;

import java.util.List;

public class Post {

	private String nick;
	private List<String> content;
	
	public Post() { }

	public Post(String nick, List<String> content) {
		super();
		this.nick = nick;
		this.content = content;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public List<String> getContent() {
		return content;
	}

	public void setContent(List<String> content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Post [nick=" + nick + ", content=" + content + "]";
	}
}
