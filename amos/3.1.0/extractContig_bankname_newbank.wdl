version 1.0

task ExtractContigBanknameNewbank {
  input {
    String? contigContigIid
    String? newNewBank
  }
  command <<<
    extractContig bankname newbank \
      ~{contigContigIid} \
      ~{newNewBank}
  >>>
}