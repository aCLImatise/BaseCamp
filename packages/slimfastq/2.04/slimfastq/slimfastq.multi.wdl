version 1.0

task Slimfastqmulti {
  command <<<
    slimfastq_multi
  >>>
  runtime {
    docker: "quay.io/biocontainers/slimfastq:2.04--he1b5a44_0"
  }
  output {
    File out_stdout = stdout()
  }
}