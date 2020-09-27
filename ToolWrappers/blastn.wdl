version 1.0

task Blastn {
  command <<<
    blastn
  >>>
  output {
    File out_stdout = stdout()
  }
}