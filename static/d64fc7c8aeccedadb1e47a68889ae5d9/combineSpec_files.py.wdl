version 1.0

task CombineSpecFilespy {
  command <<<
    combineSpec_files_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}