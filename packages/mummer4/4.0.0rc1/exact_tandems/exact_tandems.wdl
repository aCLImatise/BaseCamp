version 1.0

task Exacttandems {
  command <<<
    exact_tandems
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  output {
    File out_stdout = stdout()
  }
}