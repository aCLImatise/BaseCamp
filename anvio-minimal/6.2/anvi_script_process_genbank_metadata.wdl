version 1.0

task AnviScriptProcessGenbankMetadata {
  input {
    String metadataMetadata
    String outputOutputDir
    String outputOutputFastATxt
    Boolean excludeExcludeGeneCallsFromFastATxt
  }
  command <<<
    anvi-script-process-genbank-metadata \
      ~{if defined(metadataMetadata) then ("--metadata " +  '"' + metadataMetadata + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputFastATxt) then ("--output-fasta-txt " +  '"' + outputOutputFastATxt + '"') else ""} \
      ~{true="--exclude-gene-calls-from-fasta-txt" false="" excludeExcludeGeneCallsFromFastATxt}
  >>>
}