defmodule Teacher.Blog.Comment do
  use Ecto.Schema

  import Ecto.Changeset

  schema "blog_comments" do
    field :body, :string
    field :post_id, :id

    timestamps()
  end

end
