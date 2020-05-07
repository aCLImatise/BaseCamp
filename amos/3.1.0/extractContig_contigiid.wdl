version 1.0

task ExtractContigContigiid {
  input {
    String? bankBankName
    String? contigContigIid
    String? newNewBank
  }
  command <<<
    extractContig contigiid \
      ~{bankBankName} \
      ~{contigContigIid} \
      ~{newNewBank}
  >>>
}