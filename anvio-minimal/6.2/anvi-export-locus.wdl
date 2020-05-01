version 1.0

task AnviExportLocus {
  input {
    String contigsContigsDb
    String searchSearchTerm
    String geneGeneCallerIds
    String delimiterDelimiter
    String outputOutputDir
    File outputOutputFilePrefix
    Boolean overwriteOverwriteOutputDestinations
    Boolean removeRemovePartialHits
    Boolean neverNeverReverseComplement
  }
  command <<<
    anvi-export-locus \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(searchSearchTerm) then ("--search-term " +  '"' + searchSearchTerm + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{true="--overwrite-output-destinations" false="" overwriteOverwriteOutputDestinations} \
      ~{true="--remove-partial-hits" false="" removeRemovePartialHits} \
      ~{true="--never-reverse-complement" false="" neverNeverReverseComplement}
  >>>
}