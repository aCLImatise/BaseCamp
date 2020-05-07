version 1.0

task MageckPlot {
  input {
    String countCountTable
    String geneGeneSummary
    String genesGenes
    String samplesSamples
    String outputOutputPrefix
    String normNormMethod
    String controlControlSgRna
    String controlControlGene
    Boolean keepKeepTmp
  }
  command <<<
    mageck plot \
      ~{if defined(countCountTable) then ("--count-table " +  '"' + countCountTable + '"') else ""} \
      ~{if defined(geneGeneSummary) then ("--gene-summary " +  '"' + geneGeneSummary + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(normNormMethod) then ("--norm-method " +  '"' + normNormMethod + '"') else ""} \
      ~{if defined(controlControlSgRna) then ("--control-sgrna " +  '"' + controlControlSgRna + '"') else ""} \
      ~{if defined(controlControlGene) then ("--control-gene " +  '"' + controlControlGene + '"') else ""} \
      ~{true="--keep-tmp" false="" keepKeepTmp}
  >>>
}