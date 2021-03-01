version 1.0

task SplitMzXMLIntoSwathpy {
  command <<<
    split_mzXML_intoSwath_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}