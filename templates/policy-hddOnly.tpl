policy_rule {
  name: "hdd"
  description: "Only uses spinning drives."
  enabled: true
  scope {
    global: true
  }
  policies {
    file_tag_based_placement {
      required_tag: "hdd"
      soften_tag_requirements: false
    }
  }
}
