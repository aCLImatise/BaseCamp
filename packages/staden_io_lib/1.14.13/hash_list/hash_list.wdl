version 1.0

task HashList {
  command <<<
    hash_list
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  output {
    File out_stdout = stdout()
  }
}