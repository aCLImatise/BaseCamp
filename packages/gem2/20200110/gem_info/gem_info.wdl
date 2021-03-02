version 1.0

task Geminfo {
  command <<<
    gem_info
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  output {
    File out_stdout = stdout()
  }
}