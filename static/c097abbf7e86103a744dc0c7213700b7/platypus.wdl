version 1.0

task Platypus {
  command <<<
    platypus
  >>>
  output {
    File out_stdout = stdout()
  }
}