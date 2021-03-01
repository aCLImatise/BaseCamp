version 1.0

task Clearcore2DevicesTypesdll {
  command <<<
    Clearcore2_Devices_Types_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}