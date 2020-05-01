version 1.0

task StarchstripFloat128 {
  input {
    String includeInclude
    String excludeExclude
  }
  command <<<
    starchstrip-float128 \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""}
  >>>
}