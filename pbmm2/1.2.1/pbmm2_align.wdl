version 1.0

task Pbmm2Align {
  input {
    Boolean chunkChunkSize
    Boolean sortSort
    Boolean sortSortMemory
    Boolean sortSortThreads
    Boolean presetPreset
    Boolean kK
    Boolean wW
    Boolean noNoKmErCompression
    Boolean aA
    Boolean bB
    Boolean zZ
    Boolean zZ
    Boolean rR
    Boolean gG
    Boolean gapGapOpen1
    Boolean gapGapOpen2
    Boolean gapGapExtend1
    Boolean gapGapExtend2
    Boolean ljLjMinRatio
    Boolean gG
    Boolean cC
    Boolean noNoSpliceFlank
    Boolean sampleSample
    Boolean rgRg
    Boolean minMinConcordancePerc
    Boolean minMinIdPerc
    Boolean minMinGapCompIdPerc
    Boolean minMinLength
    Boolean bestBestN
    Boolean stripStrip
    Boolean splitSplitBySample
    Boolean unmappedUnmapped
    Boolean bamBamIndex
    Boolean medianMedianFilter
    Boolean zZMw
    Boolean hqHqRegion
    Boolean collapseCollapseHomopolymers
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
    String? isoIsoSeq
    String? unrolledUnrolled
  }
  command <<<
    pbmm2 align \
      ~{isoIsoSeq} \
      ~{true="--chunk-size" false="" chunkChunkSize} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--sort-memory" false="" sortSortMemory} \
      ~{true="--sort-threads" false="" sortSortThreads} \
      ~{true="--preset" false="" presetPreset} \
      ~{true="-k" false="" kK} \
      ~{true="-w" false="" wW} \
      ~{true="--no-kmer-compression" false="" noNoKmErCompression} \
      ~{true="-A" false="" aA} \
      ~{true="-B" false="" bB} \
      ~{true="-z" false="" zZ} \
      ~{true="-Z" false="" zZ} \
      ~{true="-r" false="" rR} \
      ~{true="-g" false="" gG} \
      ~{true="--gap-open-1" false="" gapGapOpen1} \
      ~{true="--gap-open-2" false="" gapGapOpen2} \
      ~{true="--gap-extend-1" false="" gapGapExtend1} \
      ~{true="--gap-extend-2" false="" gapGapExtend2} \
      ~{true="--lj-min-ratio" false="" ljLjMinRatio} \
      ~{true="-G" false="" gG} \
      ~{true="-C" false="" cC} \
      ~{true="--no-splice-flank" false="" noNoSpliceFlank} \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--rg" false="" rgRg} \
      ~{true="--min-concordance-perc" false="" minMinConcordancePerc} \
      ~{true="--min-id-perc" false="" minMinIdPerc} \
      ~{true="--min-gap-comp-id-perc" false="" minMinGapCompIdPerc} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--best-n" false="" bestBestN} \
      ~{true="--strip" false="" stripStrip} \
      ~{true="--split-by-sample" false="" splitSplitBySample} \
      ~{true="--unmapped" false="" unmappedUnmapped} \
      ~{true="--bam-index" false="" bamBamIndex} \
      ~{true="--median-filter" false="" medianMedianFilter} \
      ~{true="--zmw" false="" zZMw} \
      ~{true="--hqregion" false="" hqHqRegion} \
      ~{true="--collapse-homopolymers" false="" collapseCollapseHomopolymers} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile} \
      ~{unrolledUnrolled}
  >>>
}