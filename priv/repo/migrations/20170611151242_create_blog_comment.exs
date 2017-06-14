defmodule Teacher.Repo.Migrations.CreateTeacher.Blog.Comment do
  use Ecto.Migration

  def change do
    create table(:blog_comments) do
      add :body, :text
      add :post_id, references(:blog_posts, on_delete: :delete_all)

      timestamps()
    end

    create index(:blog_comments, [:post_id])
  end
end
