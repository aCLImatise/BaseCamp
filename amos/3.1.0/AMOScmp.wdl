version 1.0

task AMOScmp {
  command <<<
    AMOScmp
  >>>
  output {
    File out_stdout = stdout()
  }
}