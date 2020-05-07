version 1.0

task Nohead {
  input {
    String linesLines
  }
  command <<<
    nohead \
      ~{if defined(linesLines) then ("--lines " +  '"' + linesLines + '"') else ""}
  >>>
}