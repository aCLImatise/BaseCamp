version 1.0

task CreateLibrarypy {
  command <<<
    create_library_py
  >>>
  output {
    File out_stdout = stdout()
  }
}