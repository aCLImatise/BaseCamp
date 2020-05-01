version 1.0

task AnviGetShortReadsMappingToAGene {
  input {
    String contigsContigsDb
    String iI
    String geneGeneCallerId
    File genesGenesOfInterest
    String leewayLeeway
    File outputOutputFilePrefix
  }
  command <<<
    anvi-get-short-reads-mapping-to-a-gene \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(geneGeneCallerId) then ("--gene-caller-id " +  '"' + geneGeneCallerId + '"') else ""} \
      ~{if defined(genesGenesOfInterest) then ("--genes-of-interest " +  '"' + genesGenesOfInterest + '"') else ""} \
      ~{if defined(leewayLeeway) then ("--leeway " +  '"' + leewayLeeway + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""}
  >>>
}