version 1.0

task MSNumpressdll {
  command <<<
    MSNumpress_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}