version 1.0

task AnviGenContigsDatabase {
  input {
    String contigsContigsFastA
    String projectProjectName
    String outputOutputDbPath
    String descriptionDescription
    Int splitSplitLength
    Int kmKmErSize
    Boolean skipSkipMindfulSplitting
    Boolean skipSkipGeneCalling
    Int prodigalProdigalTranslationTable
    String externalExternalGeneCalls
    Boolean ignoreIgnoreInternalStopCodons
  }
  command <<<
    anvi-gen-contigs-database \
      ~{if defined(contigsContigsFastA) then ("--contigs-fasta " +  '"' + contigsContigsFastA + '"') else ""} \
      ~{if defined(projectProjectName) then ("--project-name " +  '"' + projectProjectName + '"') else ""} \
      ~{if defined(outputOutputDbPath) then ("--output-db-path " +  '"' + outputOutputDbPath + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(splitSplitLength) then ("--split-length " +  '"' + splitSplitLength + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{true="--skip-mindful-splitting" false="" skipSkipMindfulSplitting} \
      ~{true="--skip-gene-calling" false="" skipSkipGeneCalling} \
      ~{if defined(prodigalProdigalTranslationTable) then ("--prodigal-translation-table " +  '"' + prodigalProdigalTranslationTable + '"') else ""} \
      ~{if defined(externalExternalGeneCalls) then ("--external-gene-calls " +  '"' + externalExternalGeneCalls + '"') else ""} \
      ~{true="--ignore-internal-stop-codons" false="" ignoreIgnoreInternalStopCodons}
  >>>
}