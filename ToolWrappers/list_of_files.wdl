version 1.0

task ListOfFiles {
  command <<<
    list_of_files
  >>>
  output {
    File out_stdout = stdout()
  }
}