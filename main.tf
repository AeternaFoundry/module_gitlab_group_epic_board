resource "gitlab_group_epic_board" "group_epic_boards" {
  for_each = var.group_epic_boards

  group = each.value.group
  name  = each.value.name

  dynamic "lists" {
    for_each = each.value.lists != null ? each.value.lists : []
    content {
      label_id = lists.value.label_id
    }
  }
}

