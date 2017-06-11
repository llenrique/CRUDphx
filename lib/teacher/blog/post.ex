defmodule Teacher.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Teacher.Blog.Post


  schema "blog_posts" do
    field :body, :string
    field :title, :string
    # tengo que agregar esta linea en el modelo que según es post.ex que esta en model/ pero este es el único post.ex que me genera: 
    has_many :comments, Teacher.Comment
    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
