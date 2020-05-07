version 1.0

task ExtractContigNewbank {
  input {
    String? bankBankName
    String? contigContigIid
    String? newNewBank
  }
  command <<<
    extractContig newbank \
      ~{bankBankName} \
      ~{contigContigIid} \
      ~{newNewBank}
  >>>
}