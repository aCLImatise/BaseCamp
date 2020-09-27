version 1.0

task FilterVcfspy {
  command <<<
    filter_vcfs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}