version 1.0

task PbsvCall {
  input {
    Boolean chunkChunkLength
    Boolean regionRegion
    Boolean typesTypes
    Boolean minMinSvLength
    Boolean minMinCnvLength
    Boolean maxMaxInsLength
    Boolean maxMaxDupLength
    Boolean clusterClusterMaxLengthPercDiff
    Boolean clusterClusterMaxRefPosDiff
    Boolean clusterClusterMinBasePairPercId
    Boolean maxMaxConsensusCoverage
    Boolean poaPoaScores
    Boolean minMinRealignLength
    Boolean callCallMinReadsAllSamples
    Boolean callCallMinReadsOneSample
    Boolean callCallMinReadsPerStrandAllSamples
    Boolean callCallMinBndReadsAllSamples
    Boolean callCallMinReadPercOneSample
    Boolean ccsCcs
    Boolean gtGtMinReads
    Boolean annotationsAnnotations
    Boolean annotationAnnotationMinPercSim
    Boolean minMinNInGap
    Boolean filterFilterNearReferenceGap
    Boolean filterFilterNearContigEnd
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    pbsv call \
      ~{true="--chunk-length" false="" chunkChunkLength} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--types" false="" typesTypes} \
      ~{true="--min-sv-length" false="" minMinSvLength} \
      ~{true="--min-cnv-length" false="" minMinCnvLength} \
      ~{true="--max-ins-length" false="" maxMaxInsLength} \
      ~{true="--max-dup-length" false="" maxMaxDupLength} \
      ~{true="--cluster-max-length-perc-diff" false="" clusterClusterMaxLengthPercDiff} \
      ~{true="--cluster-max-ref-pos-diff" false="" clusterClusterMaxRefPosDiff} \
      ~{true="--cluster-min-basepair-perc-id" false="" clusterClusterMinBasePairPercId} \
      ~{true="--max-consensus-coverage" false="" maxMaxConsensusCoverage} \
      ~{true="--poa-scores" false="" poaPoaScores} \
      ~{true="--min-realign-length" false="" minMinRealignLength} \
      ~{true="--call-min-reads-all-samples" false="" callCallMinReadsAllSamples} \
      ~{true="--call-min-reads-one-sample" false="" callCallMinReadsOneSample} \
      ~{true="--call-min-reads-per-strand-all-samples" false="" callCallMinReadsPerStrandAllSamples} \
      ~{true="--call-min-bnd-reads-all-samples" false="" callCallMinBndReadsAllSamples} \
      ~{true="--call-min-read-perc-one-sample" false="" callCallMinReadPercOneSample} \
      ~{true="--ccs" false="" ccsCcs} \
      ~{true="--gt-min-reads" false="" gtGtMinReads} \
      ~{true="--annotations" false="" annotationsAnnotations} \
      ~{true="--annotation-min-perc-sim" false="" annotationAnnotationMinPercSim} \
      ~{true="--min-N-in-gap" false="" minMinNInGap} \
      ~{true="--filter-near-reference-gap" false="" filterFilterNearReferenceGap} \
      ~{true="--filter-near-contig-end" false="" filterFilterNearContigEnd} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}