version 1.0

task Obfit {
  command <<<
    obfit
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  output {
    File out_stdout = stdout()
  }
}