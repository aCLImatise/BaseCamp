version 1.0

task JoinFilespl {
  command <<<
    joinFiles_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}