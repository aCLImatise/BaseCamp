version 1.0

task Starchstrip {
  input {
    String includeInclude
    String excludeExclude
  }
  command <<<
    starchstrip \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""}
  >>>
}