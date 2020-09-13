version 1.0

task Revseq {
  input {
    String description
  }
  command <<<
    _revseq \
      ~{description}
  >>>
  parameter_meta {
    description: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}