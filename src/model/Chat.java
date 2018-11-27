package model;

import java.util.List;

public class Chat {

	private List<Post> posts;
	
	public Chat() { }

	public Chat(List<Post> posts) {
		super();
		this.posts = posts;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	@Override
	public String toString() {
		return "Chat [posts=" + posts + "]";
	}

}
