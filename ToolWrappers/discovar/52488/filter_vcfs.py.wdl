version 1.0

task FilterVcfspy {
  command <<<
    filter_vcfs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}