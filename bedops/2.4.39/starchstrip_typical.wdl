version 1.0

task StarchstripTypical {
  input {
    String includeInclude
    String excludeExclude
  }
  command <<<
    starchstrip-typical \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""}
  >>>
}