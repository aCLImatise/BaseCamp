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
    docker: "None"
  }
  parameter_meta {
    alignment: "[-wg <wg>]              gap opening cost for multiple alignments"
  }
  output {
    File out_stdout = stdout()
  }
}