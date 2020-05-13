version 1.0

task StrlingCall {
  input {
    String? bamBam
    String? binBin
  }
  command <<<
    strling call \
      ~{bamBam} \
      ~{binBin}
  >>>
}