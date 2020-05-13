version 1.0

task AgatConvertGenscan2gff.pl {
  input {
    String genscanGenscan
    Boolean sourceSource
    Boolean primaryPrimaryTag
    Boolean inflateInflateOff
    Boolean inflateInflateType
    Boolean verboseVerbose
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_convert_genscan2gff.pl \
      ~{if defined(genscanGenscan) then ("--genscan " +  '"' + genscanGenscan + '"') else ""} \
      ~{true="--source" false="" sourceSource} \
      ~{true="--primary_tag" false="" primaryPrimaryTag} \
      ~{true="--inflate_off" false="" inflateInflateOff} \
      ~{true="--inflate_type" false="" inflateInflateType} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}