version 1.0

task SplitMzXMLIntoSwathpy {
  command <<<
    split_mzXML_intoSwath_py
  >>>
  output {
    File out_stdout = stdout()
  }
}