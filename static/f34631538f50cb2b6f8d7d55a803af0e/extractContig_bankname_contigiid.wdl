version 1.0

task ExtractContigBanknameContigiid {
  input {
    String? newNewBank
  }
  command <<<
    extractContig bankname contigiid \
      ~{newNewBank}
  >>>
}