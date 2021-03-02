version 1.0

task Clearcore2DataWiffReaderdll {
  command <<<
    Clearcore2_Data_WiffReader_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}