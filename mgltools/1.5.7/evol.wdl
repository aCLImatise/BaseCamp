version 1.0

task Evol {
  command <<<
    evol
  >>>
  output {
    File out_stdout = stdout()
  }
}