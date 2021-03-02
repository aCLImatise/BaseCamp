version 1.0

task Ete3 {
  command <<<
    ete3
  >>>
  runtime {
    docker: "quay.io/biocontainers/ete3:3.1.2"
  }
  output {
    File out_stdout = stdout()
  }
}