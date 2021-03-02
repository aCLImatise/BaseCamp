version 1.0

task Clearcore2Datadll {
  command <<<
    Clearcore2_Data_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}