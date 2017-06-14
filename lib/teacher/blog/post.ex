defmodule Teacher.Blog.Post do
  use Ecto.Schema

  import Ecto.Changeset

  schema "blog_posts" do
    field :body, :string
    field :title, :string

    has_many :comments, Teacher.Blog.Comment
    timestamps()
  end

end
