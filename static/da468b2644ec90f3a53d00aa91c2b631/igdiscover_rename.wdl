version 1.0

task IgdiscoverRename {
  input {
    Boolean noNoSort
    String notNotFound
    String renameRenameFrom
    String orderOrderBy
  }
  command <<<
    igdiscover rename \
      ~{true="--no-sort" false="" noNoSort} \
      ~{if defined(notNotFound) then ("--not-found " +  '"' + notNotFound + '"') else ""} \
      ~{if defined(renameRenameFrom) then ("--rename-from " +  '"' + renameRenameFrom + '"') else ""} \
      ~{if defined(orderOrderBy) then ("--order-by " +  '"' + orderOrderBy + '"') else ""}
  >>>
}