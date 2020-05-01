version 1.0

task PanGenomeReorderSpreadsheet {
  input {
    String tT
    String oO
    String fF
    String sS
    String aA
    String bB
    Boolean vV
  }
  command <<<
    pan_genome_reorder_spreadsheet \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}