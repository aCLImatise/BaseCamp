version 1.0

task SeqhaxRebarcode {
  input {
    File oO
    String? r1R1
    String? r2R2
  }
  command <<<
    seqhax rebarcode \
      ~{r1R1} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{r2R2}
  >>>
}