version 1.0

task PhyluceAlignExplodeAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String confConf
    String sectionSection
    Array[String]+ excludeExclude
    Boolean byByTaxOn
    Boolean includeIncludeLocus
  }
  command <<<
    phyluce_align_explode_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--by-taxon" false="" byByTaxOn} \
      ~{true="--include-locus" false="" includeIncludeLocus}
  >>>
}