version 1.0

task WordLine {
  input {
    String breakBreak
  }
  command <<<
    wordLine \
      ~{if defined(breakBreak) then ("- Break " +  '"' + breakBreak + '"') else ""}
  >>>
}