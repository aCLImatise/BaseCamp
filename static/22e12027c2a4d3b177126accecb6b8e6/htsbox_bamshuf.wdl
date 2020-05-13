version 1.0

task HtsboxBamshuf {
  input {
    Boolean oO
    Boolean uU
    Int lL
    Int nN
    String? bamsBamsHuf
    String? inInBam
    String? outOutPrefix
  }
  command <<<
    htsbox bamshuf \
      ~{bamsBamsHuf} \
      ~{true="-O" false="" oO} \
      ~{true="-u" false="" uU} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{inInBam} \
      ~{outOutPrefix}
  >>>
}