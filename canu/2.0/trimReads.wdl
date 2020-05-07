version 1.0

task TrimReads {
  input {
    String sS
    String oO
    String oO
    String tT
    String ciCi
    String coCo
    String eE
    String olOl
    String ocOc
    String minlengthMinlength
  }
  command <<<
    trimReads \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(ciCi) then ("-Ci " +  '"' + ciCi + '"') else ""} \
      ~{if defined(coCo) then ("-Co " +  '"' + coCo + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(olOl) then ("-ol " +  '"' + olOl + '"') else ""} \
      ~{if defined(ocOc) then ("-oc " +  '"' + ocOc + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("-minlength " +  '"' + minlengthMinlength + '"') else ""}
  >>>
}