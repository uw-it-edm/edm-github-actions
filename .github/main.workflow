workflow "On PR " {
  on = "pull_request"
  resolves = ["build pre-commit image"]
}

action "filter-to-pr-open-synced" {
  uses = "actions/bin/filter@master"
  args = "action 'opened|synchronize'"
}


action "build pre-commit image" {
  needs = ["filter-to-pr-open-synced"]
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build pre-commit"
}
