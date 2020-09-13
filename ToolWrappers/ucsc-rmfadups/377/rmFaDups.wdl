version 1.0

task RmFaDups {
  command <<<
    rmFaDups
  >>>
  output {
    File out_stdout = stdout()
  }
}