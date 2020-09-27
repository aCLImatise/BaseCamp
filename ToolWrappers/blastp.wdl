version 1.0

task Blastp {
  command <<<
    blastp
  >>>
  output {
    File out_stdout = stdout()
  }
}