version 1.0

task GraphProt.pl {
  input {
    Boolean modeMode
    Boolean actionAction
    Boolean onlyOnlySeq
    Boolean prefixPrefix
    Boolean modelModel
    Boolean fastFastA
    Boolean manMan
    Boolean paramsParams
    Boolean rR
    Boolean dD
    Boolean bitBitSize
    Boolean negNegFastA
    Boolean lambdaLambda
    Boolean epochsEpochs
    Boolean affinitiesAffinities
    Boolean cC
    Boolean epsilonEpsilon
    Boolean percentilePercentile
    Boolean motifMotifLen
    String motifMotifTopN
  }
  command <<<
    GraphProt.pl \
      ~{true="-mode" false="" modeMode} \
      ~{true="-action" false="" actionAction} \
      ~{true="-onlyseq" false="" onlyOnlySeq} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-model" false="" modelModel} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-man" false="" manMan} \
      ~{true="-params" false="" paramsParams} \
      ~{true="-R" false="" rR} \
      ~{true="-D" false="" dD} \
      ~{true="-bitsize" false="" bitBitSize} \
      ~{true="-negfasta" false="" negNegFastA} \
      ~{true="-lambda" false="" lambdaLambda} \
      ~{true="-epochs" false="" epochsEpochs} \
      ~{true="-affinities" false="" affinitiesAffinities} \
      ~{true="-c" false="" cC} \
      ~{true="-epsilon" false="" epsilonEpsilon} \
      ~{true="-percentile" false="" percentilePercentile} \
      ~{true="-motif_len" false="" motifMotifLen} \
      ~{if defined(motifMotifTopN) then ("-motif_top_n " +  '"' + motifMotifTopN + '"') else ""}
  >>>
}