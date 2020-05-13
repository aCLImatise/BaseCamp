version 1.0

task JgiSummarizeBamContigDepths {
  input {
    Boolean outputOutputDepth
    Boolean percentPercentIdentity
    Boolean pairedPairedContigs
    Boolean unmappedUnmappedFastQ
    Boolean noNoIntraDepthVariance
    Boolean showShowDepth
    Boolean minMinMapQual
    Boolean weightWeightMapQual
    Boolean includeIncludeEdgeBases
    Boolean maxMaxEdgeBases
    Boolean referenceReferenceFastA
    Boolean outputOutputGc
    Boolean gcGcWindow
    Boolean outputOutputReadStats
    Boolean outputOutputKmErs
    Boolean shredShredLength
    Boolean shredShredDepth
    Boolean minMinContigLength
    Boolean minMinContigDepth
  }
  command <<<
    jgi_summarize_bam_contig_depths \
      ~{true="--outputDepth" false="" outputOutputDepth} \
      ~{true="--percentIdentity" false="" percentPercentIdentity} \
      ~{true="--pairedContigs" false="" pairedPairedContigs} \
      ~{true="--unmappedFastq" false="" unmappedUnmappedFastQ} \
      ~{true="--noIntraDepthVariance" false="" noNoIntraDepthVariance} \
      ~{true="--showDepth" false="" showShowDepth} \
      ~{true="--minMapQual" false="" minMinMapQual} \
      ~{true="--weightMapQual" false="" weightWeightMapQual} \
      ~{true="--includeEdgeBases" false="" includeIncludeEdgeBases} \
      ~{true="--maxEdgeBases" false="" maxMaxEdgeBases} \
      ~{true="--referenceFasta" false="" referenceReferenceFastA} \
      ~{true="--outputGC" false="" outputOutputGc} \
      ~{true="--gcWindow" false="" gcGcWindow} \
      ~{true="--outputReadStats" false="" outputOutputReadStats} \
      ~{true="--outputKmers" false="" outputOutputKmErs} \
      ~{true="--shredLength" false="" shredShredLength} \
      ~{true="--shredDepth" false="" shredShredDepth} \
      ~{true="--minContigLength" false="" minMinContigLength} \
      ~{true="--minContigDepth" false="" minMinContigDepth}
  >>>
}