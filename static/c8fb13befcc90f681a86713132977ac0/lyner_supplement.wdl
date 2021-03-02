version 1.0

task LynerSupplement {
  input {
    String supplementary_data
  }
  command <<<
    lyner supplement \
      ~{supplementary_data}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    supplementary_data: ""
  }
  output {
    File out_stdout = stdout()
  }
}