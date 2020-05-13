version 1.0

task PhyluceAlignExtractTaxonFastaFromAlignments {
  input {
    String alignmentsAlignments
    String taxTaxOn
    String outputOutput
    String inputInputFormat
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_extract_taxon_fasta_from_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(taxTaxOn) then ("--taxon " +  '"' + taxTaxOn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}