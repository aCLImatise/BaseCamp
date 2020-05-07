version 1.0

task OligoscreenList file {
  input {
    String? reportReportFile
  }
  command <<<
    oligoscreen list file \
      ~{reportReportFile}
  >>>
}