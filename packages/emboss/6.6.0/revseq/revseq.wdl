version 1.0

task Revseq {
  input {
    String description
  }
  command <<<
    revseq \
      ~{description}
  >>>
  parameter_meta {
    description: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}