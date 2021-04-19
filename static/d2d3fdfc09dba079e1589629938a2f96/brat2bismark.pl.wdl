version 1.0

task Brat2bismarkpl {
  command <<<
    brat2bismark_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0"
  }
  output {
    File out_stdout = stdout()
  }
}