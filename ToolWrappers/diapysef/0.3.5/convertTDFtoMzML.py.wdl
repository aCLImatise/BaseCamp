version 1.0

task ConvertTDFtoMzMLpy {
  command <<<
    convertTDFtoMzML_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}