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
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    fast_a_file: ""
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
  }
}