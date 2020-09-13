version 1.0

task RNAforester {
  command <<<
    RNAforester
  >>>
  output {
    File out_stdout = stdout()
  }
}