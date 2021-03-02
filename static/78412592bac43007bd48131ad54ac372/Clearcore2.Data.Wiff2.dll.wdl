version 1.0

task Clearcore2DataWiff2dll {
  command <<<
    Clearcore2_Data_Wiff2_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}