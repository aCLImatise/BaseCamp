version 1.0

task CommandLinedll {
  command <<<
    CommandLine_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}