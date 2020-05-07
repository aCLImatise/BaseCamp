version 1.0

task Fa2fq.py {
  input {
    String? convertConvert
    String? fastFastA
    String? toTo
    String? fastFastQ
    String? fastFastAFilename
  }
  command <<<
    fa2fq.py \
      ~{convertConvert} \
      ~{fastFastA} \
      ~{toTo} \
      ~{fastFastQ} \
      ~{fastFastAFilename}
  >>>
}