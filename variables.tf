variable "group_epic_boards" {
  description = <<EOT
Map of group_epic_boards, attributes below
Required:
    - group
    - name
Optional:
    - lists (block):
        - label_id (optional)
EOT

  type = map(object({
    group = string
    name  = string
    lists = optional(list(object({
      label_id = optional(number)
    })))
  }))
}

