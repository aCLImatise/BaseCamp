version 1.0

task AgatSpGxfToGff3.pl {
  input {
    String gffGff
    String ctCt
    String exposeExpose
    String mergeMergeLoci
    Boolean vV
    String noNoCheck
    String outputOutput
    String gffGffVersionInput
    String gffGffVersionOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_gxf_to_gff3.pl \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(ctCt) then ("--ct " +  '"' + ctCt + '"') else ""} \
      ~{if defined(exposeExpose) then ("--expose " +  '"' + exposeExpose + '"') else ""} \
      ~{if defined(mergeMergeLoci) then ("--merge_loci " +  '"' + mergeMergeLoci + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(noNoCheck) then ("--no_check " +  '"' + noNoCheck + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(gffGffVersionInput) then ("--gff_version_input " +  '"' + gffGffVersionInput + '"') else ""} \
      ~{if defined(gffGffVersionOutput) then ("--gff_version_output " +  '"' + gffGffVersionOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}