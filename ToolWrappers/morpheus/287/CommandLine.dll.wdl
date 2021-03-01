version 1.0

task CommandLinedll {
  command <<<
    CommandLine_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}