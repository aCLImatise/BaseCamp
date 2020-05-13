version 1.0

task Superfocus {
  input {
    String queryQuery
    String outputOutputDirectory
    String outputOutputPrefix
    String alignerAligner
    Int minimumMinimumIdentity
    Int minimumMinimumAlignment
    String threadsThreads
    String evalueEvalue
    String databaseDatabase
    String aminoAminoAcid
    String fastFast
    String normaliseNormaliseOutput
    String focusFocus
    String alternateAlternateDirectory
    Boolean deleteDeleteAlignments
    String logLog
  }
  command <<<
    superfocus \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(minimumMinimumIdentity) then ("--minimum_identity " +  '"' + minimumMinimumIdentity + '"') else ""} \
      ~{if defined(minimumMinimumAlignment) then ("--minimum_alignment " +  '"' + minimumMinimumAlignment + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(aminoAminoAcid) then ("--amino_acid " +  '"' + aminoAminoAcid + '"') else ""} \
      ~{if defined(fastFast) then ("--fast " +  '"' + fastFast + '"') else ""} \
      ~{if defined(normaliseNormaliseOutput) then ("--normalise_output " +  '"' + normaliseNormaliseOutput + '"') else ""} \
      ~{if defined(focusFocus) then ("--focus " +  '"' + focusFocus + '"') else ""} \
      ~{if defined(alternateAlternateDirectory) then ("--alternate_directory " +  '"' + alternateAlternateDirectory + '"') else ""} \
      ~{true="--delete_alignments" false="" deleteDeleteAlignments} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}