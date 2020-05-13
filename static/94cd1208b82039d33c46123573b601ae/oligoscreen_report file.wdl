version 1.0

task OligoscreenReport file {
  input {
    String? listListFile
    String? reportReportFile
  }
  command <<<
    oligoscreen report file \
      ~{listListFile} \
      ~{reportReportFile}
  >>>
}