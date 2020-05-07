version 1.0

task RearrangeSnvMatrix.pl {
  input {
    String tT
    String oO
    String mM
    String pP
  }
  command <<<
    rearrange_snv_matrix.pl \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}