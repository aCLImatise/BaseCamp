version 1.0

task Sequanix {
  command <<<
    sequanix
  >>>
  output {
    File out_stdout = stdout()
  }
}