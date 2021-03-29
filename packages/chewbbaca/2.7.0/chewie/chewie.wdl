version 1.0

task Chewie {
  input {
    String chewbbacadotpy
    String? module
  }
  command <<<
    chewie \
      ~{chewbbacadotpy} \
      ~{module}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewbbaca:2.7.0--py_0"
  }
  parameter_meta {
    chewbbacadotpy: ""
    module: ""
  }
  output {
    File out_stdout = stdout()
  }
}