version 1.0

task AgatConvertEmbl2gff.pl {
  input {
    Boolean emblEmbl
    Boolean primaryPrimaryTag
    Boolean dD
    Boolean dD
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? gaasGaasConverterEmbl2gffpl
  }
  command <<<
    agat_convert_embl2gff.pl \
      ~{gaasGaasConverterEmbl2gffpl} \
      ~{true="--embl" false="" emblEmbl} \
      ~{true="-primary_tag" false="" primaryPrimaryTag} \
      ~{true="-d" false="" dD} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}