version 1.0

task QualTrim.py {
  input {
    String bB
    String pP
    String qQ
    String lL
    Boolean illuminaIllumina5
    Boolean solexaSolexa
    String? fastFastQ
  }
  command <<<
    qual_trim.py \
      ~{fastFastQ} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="--illumina5" false="" illuminaIllumina5} \
      ~{true="--solexa" false="" solexaSolexa}
  >>>
}