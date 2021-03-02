version 1.0

task SciexToolKitdll {
  command <<<
    SciexToolKit_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}