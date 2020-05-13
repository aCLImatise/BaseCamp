version 1.0

task AnviSummarize {
  input {
    String panPanOrProfileDb
    String contigsContigsDb
    String genomesGenomesStorage
    Boolean inInItGeneCoverages
    Boolean reformatReformatContigNames
    Boolean reportReportAaSeqsForGeneCalls
    Boolean reportReportDnaSequences
    String collectionCollectionName
    String outputOutputDir
    Boolean listListCollections
    String taxonomicTaxonomicLevel
    String cogCogDataDir
    Boolean quickQuickSummary
    Boolean justJustDoIt
  }
  command <<<
    anvi-summarize \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{true="--init-gene-coverages" false="" inInItGeneCoverages} \
      ~{true="--reformat-contig-names" false="" reformatReformatContigNames} \
      ~{true="--report-aa-seqs-for-gene-calls" false="" reportReportAaSeqsForGeneCalls} \
      ~{true="--report-DNA-sequences" false="" reportReportDnaSequences} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--list-collections" false="" listListCollections} \
      ~{if defined(taxonomicTaxonomicLevel) then ("--taxonomic-level " +  '"' + taxonomicTaxonomicLevel + '"') else ""} \
      ~{if defined(cogCogDataDir) then ("--cog-data-dir " +  '"' + cogCogDataDir + '"') else ""} \
      ~{true="--quick-summary" false="" quickQuickSummary} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}