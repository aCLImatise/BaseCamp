version 1.0

task Fastaclip {
  command <<<
    fastaclip
  >>>
  output {
    File out_stdout = stdout()
  }
}