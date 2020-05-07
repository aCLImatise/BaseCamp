version 1.0

task VsnpRemoveFromAnalysis.py {
  input {
    String rR
    String wW
    String eE
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_remove_from_analysis.py \
      ~{progProg} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}