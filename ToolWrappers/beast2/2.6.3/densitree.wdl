version 1.0

task Densitree {
  command <<<
    densitree
  >>>
  runtime {
    docker: "quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0"
  }
  output {
    File out_stdout = stdout()
  }
}