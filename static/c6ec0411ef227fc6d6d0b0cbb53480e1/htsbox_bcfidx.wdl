version 1.0

task HtsboxBcfidx {
  input {
    Int sS
    String? bamBamIdx
    String? inInBam
  }
  command <<<
    htsbox bcfidx \
      ~{bamBamIdx} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{inInBam}
  >>>
}