version 1.0

task Fastaannotatecdna {
  command <<<
    fastaannotatecdna
  >>>
  output {
    File out_stdout = stdout()
  }
}