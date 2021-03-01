version 1.0

task Pasteseq {
  input {
    Boolean? pos
  }
  command <<<
    _pasteseq \
      ~{if (pos) then "-pos" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pos: "integer    [$(asequence.end)] The position in the main\\ninput sequence to insert after.\\nTo insert before the start use the position\\n0. (Integer 0 or more)"
  }
  output {
    File out_stdout = stdout()
  }
}