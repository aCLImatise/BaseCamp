version 1.0

task Rbhtfinder {
  command <<<
    rbhtfinder
  >>>
  output {
    File out_stdout = stdout()
  }
}