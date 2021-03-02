version 1.0

task Meme {
  input {
    String alignment
  }
  command <<<
    meme \
      ~{alignment}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    alignment: "[-wg <wg>]              gap opening cost for multiple alignments"
  }
  output {
    File out_stdout = stdout()
  }
}