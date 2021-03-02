version 1.0

task Hicexplorer {
  command <<<
    hicexplorer
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}