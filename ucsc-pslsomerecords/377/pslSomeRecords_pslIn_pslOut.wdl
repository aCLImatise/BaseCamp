version 1.0

task PslSomeRecordsPslInPslOut {
  input {
    String? listListFile
    String? pslPslOut
  }
  command <<<
    pslSomeRecords pslIn pslOut \
      ~{listListFile} \
      ~{pslPslOut}
  >>>
}