version 1.0

task OligoscreenSmp {
  input {
    String? oligoOligoScreen
    String? listListFile
    String? reportReportFile
  }
  command <<<
    oligoscreen-smp \
      ~{oligoOligoScreen} \
      ~{listListFile} \
      ~{reportReportFile}
  >>>
}