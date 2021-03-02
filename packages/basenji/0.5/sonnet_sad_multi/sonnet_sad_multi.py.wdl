version 1.0

task SonnetSadMultipy {
  command <<<
    sonnet_sad_multi_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}