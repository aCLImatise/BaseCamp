version 1.0

task GetDiffExpression.pl {
  input {
    Boolean rnaRna
    Boolean repeatsRepeats
    Boolean peaksPeaks
    String loopLoop
    Boolean pc1Pc1
    Boolean basicBasic
    Boolean dispersionDispersion
    Boolean norm2Norm2Total
    Boolean avsAvsA
    Boolean showShowR
    Boolean deseq2Deseq2
    Boolean deDeSeq
    Boolean edgerEdger
    Boolean limmaLimma
    String exportExport
    Boolean fdrFdr
    Boolean pPValue
    Boolean log2foldLog2fold
    Boolean rRLog
    Boolean vstVst
    Boolean simpleSimpleNorm
    Boolean rawRaw
  }
  command <<<
    getDiffExpression.pl \
      ~{true="-rna" false="" rnaRna} \
      ~{true="-repeats" false="" repeatsRepeats} \
      ~{true="-peaks" false="" peaksPeaks} \
      ~{if defined(loopLoop) then ("-loop " +  '"' + loopLoop + '"') else ""} \
      ~{true="-pc1" false="" pc1Pc1} \
      ~{true="-basic" false="" basicBasic} \
      ~{true="-dispersion" false="" dispersionDispersion} \
      ~{true="-norm2total" false="" norm2Norm2Total} \
      ~{true="-AvsA" false="" avsAvsA} \
      ~{true="-showR" false="" showShowR} \
      ~{true="-DESeq2" false="" deseq2Deseq2} \
      ~{true="-DESeq" false="" deDeSeq} \
      ~{true="-edgeR" false="" edgerEdger} \
      ~{true="-limma" false="" limmaLimma} \
      ~{if defined(exportExport) then ("-export " +  '"' + exportExport + '"') else ""} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-log2fold" false="" log2foldLog2fold} \
      ~{true="-rlog" false="" rRLog} \
      ~{true="-vst" false="" vstVst} \
      ~{true="-simpleNorm" false="" simpleSimpleNorm} \
      ~{true="-raw" false="" rawRaw}
  >>>
}