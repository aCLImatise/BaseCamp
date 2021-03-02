version 1.0

task Tblastx {
  command <<<
    tblastx
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3"
  }
  output {
    File out_stdout = stdout()
  }
}