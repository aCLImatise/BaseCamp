version 1.0

task PslSomeRecordsListFile {
  input {
    String? pslPslIn
    String? listListFile
    String? pslPslOut
  }
  command <<<
    pslSomeRecords listFile \
      ~{pslPslIn} \
      ~{listListFile} \
      ~{pslPslOut}
  >>>
}