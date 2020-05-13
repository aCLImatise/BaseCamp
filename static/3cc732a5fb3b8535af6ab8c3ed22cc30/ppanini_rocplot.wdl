version 1.0

task PpaniniRocplot {
  input {
    Boolean masterMasterPlot
    Boolean plotPlotMetaGenomics
    Boolean plotPlotGenomics
    File pathPath
    String outfileOutfile
    String betaBeta
    Int sizeSize
    String outputOutput
    String nicheNiche
  }
  command <<<
    ppanini_rocplot \
      ~{true="--master-plot" false="" masterMasterPlot} \
      ~{true="--plot-metagenomics" false="" plotPlotMetaGenomics} \
      ~{true="--plot-genomics" false="" plotPlotGenomics} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nicheNiche) then ("--niche " +  '"' + nicheNiche + '"') else ""}
  >>>
}