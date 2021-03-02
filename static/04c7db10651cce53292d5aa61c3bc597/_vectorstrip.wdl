version 1.0

task Vectorstrip {
  input {
    Boolean? mismatch
    Boolean? all_sequences
  }
  command <<<
    _vectorstrip \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (all_sequences) then "-allsequences" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mismatch: "integer    [10] Max allowed % mismatch (Any integer\\nvalue)"
    all_sequences: "boolean    [N] Show all sequences in output"
  }
  output {
    File out_stdout = stdout()
  }
}