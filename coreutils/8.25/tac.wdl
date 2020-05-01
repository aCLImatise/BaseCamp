version 1.0

task Tac {
  input {
    String beforeBefore
    Int regexRegex
    String separatorSeparator
  }
  command <<<
    tac \
      ~{if defined(beforeBefore) then ("--before " +  '"' + beforeBefore + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""}
  >>>
}