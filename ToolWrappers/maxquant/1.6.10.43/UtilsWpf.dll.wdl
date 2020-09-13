version 1.0

task UtilsWpfdll {
  command <<<
    UtilsWpf_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}