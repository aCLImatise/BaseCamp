version 1.0

task PslSomeRecordsPslOut {
  input {
    String? pslPslIn
    String? listListFile
    String? pslPslOut
  }
  command <<<
    pslSomeRecords pslOut \
      ~{pslPslIn} \
      ~{listListFile} \
      ~{pslPslOut}
  >>>
}