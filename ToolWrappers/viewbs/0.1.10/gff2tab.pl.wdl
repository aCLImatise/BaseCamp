version 1.0

task Gff2tabpl {
  command <<<
    gff2tab_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  output {
    File out_stdout = stdout()
  }
}