version 1.0

task Feattext {
  command <<<
    feattext
  >>>
  output {
    File out_stdout = stdout()
  }
}