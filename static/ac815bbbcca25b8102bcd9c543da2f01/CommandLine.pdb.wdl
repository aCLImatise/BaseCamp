version 1.0

task CommandLinepdb {
  command <<<
    CommandLine_pdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}