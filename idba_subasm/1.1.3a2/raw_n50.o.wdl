version 1.0

task RawN50o {
  command <<<
    raw_n50_o
  >>>
  output {
    File out_stdout = stdout()
  }
}