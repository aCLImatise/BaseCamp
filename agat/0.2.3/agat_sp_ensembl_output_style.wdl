version 1.0

task AgatSpEnsemblOutputStyle.pl {
  input {
    String gffGff
    String ctCt
    Boolean vV
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_ensembl_output_style.pl \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(ctCt) then ("--ct " +  '"' + ctCt + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}