version 1.0

task FilterLibrarysh {
  command <<<
    filter_library_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}