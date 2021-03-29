version 1.0

task Stacksgdb {
  command <<<
    stacks_gdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}