version 1.0

task FilterLibrarysh {
  command <<<
    filter_library_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}