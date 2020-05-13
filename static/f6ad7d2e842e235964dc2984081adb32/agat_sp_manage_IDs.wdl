version 1.0

task AgatSpManageIDs.pl {
  input {
    String gffGff
    Boolean gapGap
    Boolean ensemblEnsembl
    Boolean prefixPrefix
    Boolean typeTypeDependent
    Boolean tairTair
    Boolean nbNb
    String pP
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_manage_IDs.pl \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{true="--gap" false="" gapGap} \
      ~{true="--ensembl" false="" ensemblEnsembl} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--type_dependent" false="" typeTypeDependent} \
      ~{true="--tair" false="" tairTair} \
      ~{true="--nb" false="" nbNb} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}