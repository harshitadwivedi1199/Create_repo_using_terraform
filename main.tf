#  Using string set for repo_names 
 resource "github_repository" "this" {
    for_each = toset(var.repo_names)
    name = each.key
    description = "Repo created by terraform script"
    visibility = "private"
    auto_init = true
 }


# Using map for repo_names

resource "github_repository" "map-repo" {
  for_each    = var.repo_name_desc
  name        = each.key
  description = each.value
  visibility  = "${var.repo_visibility}"
  auto_init   = true
}


