version 1.0

task JoinFilespl {
  command <<<
    joinFiles_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}