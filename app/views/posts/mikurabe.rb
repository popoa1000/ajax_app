<h1>AjaxApp</h1>
<%= form_with url:  "/posts", method: :post,id: "form" do |form| %>
  <%= form.text_field :content %>
  <%= form.submit '投稿する' , id: "submit" %>
<% end %>

<% @posts.each do |post| %>
<div class="post">
  <div class="post-date">
    投稿日時：<%= post.created_at %>
  </div>
  <div class="post-content">
    <%= post.content %>
  </div>
</div>
<% end %>