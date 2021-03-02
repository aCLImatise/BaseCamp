version 1.0

task Convert2blastmask {
  command <<<
    convert2blastmask
  >>>
  runtime {
    docker: "quay.io/biocontainers/rmblast:2.10.0--h2d02072_0"
  }
  output {
    File out_stdout = stdout()
  }
}