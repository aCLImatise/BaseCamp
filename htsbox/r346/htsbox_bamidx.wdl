version 1.0

task HtsboxBamidx {
  input {
    Int sS
    String? bamBamIdx
    String? inInBam
  }
  command <<<
    htsbox bamidx \
      ~{bamBamIdx} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{inInBam}
  >>>
}