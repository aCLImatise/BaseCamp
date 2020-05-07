version 1.0

task AgatSpManageFunctionalAnnotation.pl {
  input {
    String blastBlast
    String dbDb
    String blastBlastEvalue
    Boolean pePe
    String interproInterpro
    Boolean idId
    Boolean iIDau
    Boolean nbNb
    String outputOutput
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_manage_functional_annotation.pl \
      ~{if defined(blastBlast) then ("--blast " +  '"' + blastBlast + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(blastBlastEvalue) then ("--blast_evalue " +  '"' + blastBlastEvalue + '"') else ""} \
      ~{true="--pe" false="" pePe} \
      ~{if defined(interproInterpro) then ("--interpro " +  '"' + interproInterpro + '"') else ""} \
      ~{true="-id" false="" idId} \
      ~{true="-idau" false="" iIDau} \
      ~{true="-nb" false="" nbNb} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}