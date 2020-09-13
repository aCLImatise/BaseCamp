version 1.0

task MqparConverterexe {
  command <<<
    MqparConverter_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}