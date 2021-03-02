version 1.0

task ConvertMGEScan30pl {
  command <<<
    convert_MGEScan3_0_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}