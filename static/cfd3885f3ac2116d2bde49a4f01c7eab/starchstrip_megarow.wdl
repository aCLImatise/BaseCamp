version 1.0

task StarchstripMegarow {
  input {
    String includeInclude
    String excludeExclude
  }
  command <<<
    starchstrip-megarow \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""}
  >>>
}