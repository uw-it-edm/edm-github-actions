workflow "On PR " {
  on = "pull_request"
  resolves = ["build pre-commit image"]
}

action "build pre-commit image" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build pre-commit"
}
