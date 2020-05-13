version 1.0

task Bank2coverageOutprefix {
  input {
    String? bankBankName
    String? outOutPrefix
  }
  command <<<
    bank2coverage outprefix \
      ~{bankBankName} \
      ~{outOutPrefix}
  >>>
}