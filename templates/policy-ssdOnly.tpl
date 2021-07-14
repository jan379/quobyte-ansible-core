policy_rule {
  name: "ssd"
  description: "Only uses SSD"
  enabled: true
  scope {
    global: true
  }
  policies {
    file_tag_based_placement {
      required_tag: "ssd"
      soften_tag_requirements: false
    }
  }
}
