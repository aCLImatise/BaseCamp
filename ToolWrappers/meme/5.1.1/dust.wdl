version 1.0

task Dust {
  input {
    File fast_a_file
    String? cut_off
  }
  command <<<
    dust \
      ~{fast_a_file} \
      ~{cut_off}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}