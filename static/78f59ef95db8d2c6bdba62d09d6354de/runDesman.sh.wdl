version 1.0

task RunDesmansh {
  command <<<
    runDesman_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}