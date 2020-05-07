version 1.0

task FaOneRecordRecordName {
  input {
    String? inInFa
    String? recordRecordName
  }
  command <<<
    faOneRecord recordName \
      ~{inInFa} \
      ~{recordRecordName}
  >>>
}