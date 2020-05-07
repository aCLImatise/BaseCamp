version 1.0

task GetDifferentialPeaksReplicates.pl {
  input {
    String bB
    String iI
    Boolean fF
    Boolean qQ
    Boolean fdrFdr
    String genomeGenome
    Boolean deseq2Deseq2
    Boolean balancedBalanced
    Boolean fragFragLength
  }
  command <<<
    getDifferentialPeaksReplicates.pl \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-q" false="" qQ} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="-DESeq2" false="" deseq2Deseq2} \
      ~{true="-balanced" false="" balancedBalanced} \
      ~{true="-fragLength" false="" fragFragLength}
  >>>
}