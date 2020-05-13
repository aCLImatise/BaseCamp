version 1.0

task Dnaplotter {
  input {
    File tT
  }
  command <<<
    dnaplotter \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}