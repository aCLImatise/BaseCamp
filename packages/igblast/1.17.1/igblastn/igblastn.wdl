version 1.0

task Igblastn {
  command <<<
    igblastn
  >>>
  runtime {
    docker: "quay.io/biocontainers/igblast:1.17.1--h388d1fa_0"
  }
  output {
    File out_stdout = stdout()
  }
}