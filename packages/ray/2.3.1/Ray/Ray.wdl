version 1.0

task Ray {
  command <<<
    Ray
  >>>
  output {
    File out_stdout = stdout()
  }
}