version 1.0

task FaOneRecordIn.fa {
  input {
    String? recordRecordName
  }
  command <<<
    faOneRecord in.fa \
      ~{recordRecordName}
  >>>
}