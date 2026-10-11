output "group_epic_boards_id" {
  description = "Map of id values across all group_epic_boards, keyed the same as var.group_epic_boards except keys with no id are omitted"
  value       = { for k, v in gitlab_group_epic_board.group_epic_boards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_epic_boards_group" {
  description = "Map of group values across all group_epic_boards, keyed the same as var.group_epic_boards except keys with no group are omitted"
  value       = { for k, v in gitlab_group_epic_board.group_epic_boards : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_epic_boards_lists" {
  description = "Map of lists values across all group_epic_boards, keyed the same as var.group_epic_boards except keys with no lists are omitted"
  value       = { for k, v in gitlab_group_epic_board.group_epic_boards : k => v.lists if v.lists != null && length(v.lists) > 0 }
}
output "group_epic_boards_name" {
  description = "Map of name values across all group_epic_boards, keyed the same as var.group_epic_boards except keys with no name are omitted"
  value       = { for k, v in gitlab_group_epic_board.group_epic_boards : k => v.name if v.name != null && length(v.name) > 0 }
}

