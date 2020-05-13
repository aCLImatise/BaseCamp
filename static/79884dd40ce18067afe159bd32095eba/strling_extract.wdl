version 1.0

task StrlingExtract {
  input {
    String? bamBam
    String? binBin
  }
  command <<<
    strling extract \
      ~{bamBam} \
      ~{binBin}
  >>>
}