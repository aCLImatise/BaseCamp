version 1.0

task MqparConverterexe {
  command <<<
    MqparConverter_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}