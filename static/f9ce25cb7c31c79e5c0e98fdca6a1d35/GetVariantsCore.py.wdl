version 1.0

task GetVariantsCorepy {
  command <<<
    GetVariantsCore_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}