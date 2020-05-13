version 1.0

task AnnotateJunctions {
  input {
    String jJList
    String jJTab
    String gG
    String fF
    String oO
    String sS
    String rR
    String vV
  }
  command <<<
    annotate_junctions \
      ~{if defined(jJList) then ("-jlist " +  '"' + jJList + '"') else ""} \
      ~{if defined(jJTab) then ("-jtab " +  '"' + jJTab + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}