version 1.0

task MSNumpressdll {
  command <<<
    MSNumpress_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}