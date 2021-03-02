version 1.0

task Cutseq {
  input {
    Boolean? from
    Boolean? to
  }
  command <<<
    _cutseq \
      ~{if (from) then "-from" else ""} \
      ~{if (to) then "-to" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    from: "integer    [Start of sequence (0)] This is the start\\nposition (inclusive) of the section of the\\nsequence that you wish to remove. (Any\\ninteger value)"
    to: "integer    [End of sequence (0)] This is the end\\nposition (inclusive) of the section of the\\nsequence that you wish to remove. (Any\\ninteger value)"
  }
  output {
    File out_stdout = stdout()
  }
}