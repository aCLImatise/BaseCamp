version 1.0

task SplitReads {
  input {
    String sS
    String oO
    String oO
    String tT
    String ciCi
    String coCo
    String eE
    String minlengthMinlength
  }
  command <<<
    splitReads \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(ciCi) then ("-Ci " +  '"' + ciCi + '"') else ""} \
      ~{if defined(coCo) then ("-Co " +  '"' + coCo + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("-minlength " +  '"' + minlengthMinlength + '"') else ""}
  >>>
}