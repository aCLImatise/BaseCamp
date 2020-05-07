version 1.0

task AnviExportGeneCalls {
  input {
    String contigsContigsDb
    File outputOutputFile
    String geneGeneCaller
    Boolean listListGeneCallers
    Boolean skipSkipSequenceReporting
  }
  command <<<
    anvi-export-gene-calls \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(geneGeneCaller) then ("--gene-caller " +  '"' + geneGeneCaller + '"') else ""} \
      ~{true="--list-gene-callers" false="" listListGeneCallers} \
      ~{true="--skip-sequence-reporting" false="" skipSkipSequenceReporting}
  >>>
}