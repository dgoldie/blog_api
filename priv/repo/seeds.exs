# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BlogApi.Repo.insert!(%BlogApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#

# Journal.create_post(%{field: value})
alias BlogApi.Repo
alias BlogApi.Journals.Post

Repo.delete_all(Post)

Repo.insert! %Post{
  title: "Erlang",
  body: "is Great!",
  published: false
}

Repo.insert! %Post{
  title: "Rails",
  body: "is super!",
  published: false
}

Repo.insert! %Post{
  title: "Node",
  body: "is well....",
  published: false
}
