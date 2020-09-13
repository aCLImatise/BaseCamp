version 1.0

task CombineSpecFilespy {
  command <<<
    combineSpec_files_py
  >>>
  output {
    File out_stdout = stdout()
  }
}