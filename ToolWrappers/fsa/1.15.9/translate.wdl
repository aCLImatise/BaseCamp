version 1.0

task Translate {
  input {
    File fast_a_file
  }
  command <<<
    translate \
      ~{fast_a_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}