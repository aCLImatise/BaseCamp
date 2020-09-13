version 1.0

task GetVariantsCorepy {
  command <<<
    GetVariantsCore_py
  >>>
  output {
    File out_stdout = stdout()
  }
}