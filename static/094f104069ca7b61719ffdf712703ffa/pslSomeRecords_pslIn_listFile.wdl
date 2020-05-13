version 1.0

task PslSomeRecordsPslInListFile {
  input {
    String? pslPslOut
  }
  command <<<
    pslSomeRecords pslIn listFile \
      ~{pslPslOut}
  >>>
}