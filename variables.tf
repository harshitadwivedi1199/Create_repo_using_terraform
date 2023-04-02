# For repo name
variable "repo_names" {
  type = list(string)
}
# For repo description
variable "repo_name_desc" {
  type = map(any)
}
# For github token
variable "githubtoken" {
  type      = string
  sensitive = true
}

# For Repo visibility
variable "repo_visibility" {
  type      = string
}

# output "print" {
#   value = "${var.githubtoken}"
# }