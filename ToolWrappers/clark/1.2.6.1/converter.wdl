version 1.0

task Converter {
  command <<<
    converter
  >>>
  output {
    File out_stdout = stdout()
  }
}