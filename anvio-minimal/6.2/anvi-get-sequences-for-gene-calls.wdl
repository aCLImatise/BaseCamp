version 1.0

task AnviGetSequencesForGeneCalls {
  input {
    String contigsContigsDb
    String geneGeneCallerIds
    String delimiterDelimiter
    Boolean reportReportExtendedDefLines
    String wrapWrap
    Boolean exportExportGff3
    Boolean getGetAaSequences
    String genomesGenomesStorage
    String genomeGenomeNames
    File outputOutputFile
  }
  command <<<
    anvi-get-sequences-for-gene-calls \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(geneGeneCallerIds) then ("--gene-caller-ids " +  '"' + geneGeneCallerIds + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--report-extended-deflines" false="" reportReportExtendedDefLines} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{true="--export-gff3" false="" exportExportGff3} \
      ~{true="--get-aa-sequences" false="" getGetAaSequences} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(genomeGenomeNames) then ("--genome-names " +  '"' + genomeGenomeNames + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}