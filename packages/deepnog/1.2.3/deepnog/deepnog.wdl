version 1.0

task Deepnog {
  command <<<
    deepnog
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepnog:1.2.3--pyh5bfb8f1_0"
  }
  output {
    File out_stdout = stdout()
  }
}