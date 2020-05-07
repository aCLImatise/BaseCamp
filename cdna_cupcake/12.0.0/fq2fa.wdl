version 1.0

task Fq2fa.py {
  input {
    String? convertConvert
    String? fastFastQ
    String? toTo
    String? fastFastA
    String? fastFastQFilename
  }
  command <<<
    fq2fa.py \
      ~{convertConvert} \
      ~{fastFastQ} \
      ~{toTo} \
      ~{fastFastA} \
      ~{fastFastQFilename}
  >>>
}