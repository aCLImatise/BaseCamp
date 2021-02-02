version 1.0

task Circlator {
  command <<<
    circlator
  >>>
  output {
    File out_stdout = stdout()
  }
}