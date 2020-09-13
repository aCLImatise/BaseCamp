version 1.0

task FilterKallistopy {
  command <<<
    filter_kallisto_py
  >>>
  output {
    File out_stdout = stdout()
  }
}