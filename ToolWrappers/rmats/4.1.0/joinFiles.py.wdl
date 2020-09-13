version 1.0

task JoinFilespy {
  command <<<
    joinFiles_py
  >>>
  output {
    File out_stdout = stdout()
  }
}