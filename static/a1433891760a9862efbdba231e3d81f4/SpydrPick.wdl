version 1.0

task SpydrPick {
  input {
    Boolean vV
    String miMiThreshold
    String miMiValues
    String miMiPseudoCount
    String miMiThresholdIterations
    String miMiThresholdPairs
    String ldLdThreshold
    Boolean noNoArAcne
    Boolean tT
    String alignmentAlignmentFile
    String includeIncludeList
    String excludeExcludeList
    String mappingMappingList
    String sampleSampleList
    String sampleSampleWeights
    String inputInputIndexingBase
    Boolean noNoFilterAlignment
    String mafMafThreshold
    String gapGapThreshold
    Boolean noNoSampleReweighting
    String sampleSampleReweightingThreshold
    Boolean rescaleRescaleSampleWeights
    Boolean outputOutputStateFrequencies
    Boolean outputOutputSampleWeights
    Boolean outputOutputSampleDistanceMatrix
    String outputOutputIndexingBase
    Boolean outputOutputAlignment
    Boolean outputOutputFilteredAlignment
    String genomeGenomeSize
    Boolean linearLinearGenome
    String beginBegin
    String endEnd
    Boolean oO
    String arArAcneEdgeThreshold
    String arArAcneBlockSize
    String arArAcneNodeGroupingSize
    String? alignmentAlignmentFile
  }
  command <<<
    SpydrPick \
      ~{alignmentAlignmentFile} \
      ~{true="-v" false="" vV} \
      ~{if defined(miMiThreshold) then ("--mi-threshold " +  '"' + miMiThreshold + '"') else ""} \
      ~{if defined(miMiValues) then ("--mi-values " +  '"' + miMiValues + '"') else ""} \
      ~{if defined(miMiPseudoCount) then ("--mi-pseudocount " +  '"' + miMiPseudoCount + '"') else ""} \
      ~{if defined(miMiThresholdIterations) then ("--mi-threshold-iterations " +  '"' + miMiThresholdIterations + '"') else ""} \
      ~{if defined(miMiThresholdPairs) then ("--mi-threshold-pairs " +  '"' + miMiThresholdPairs + '"') else ""} \
      ~{if defined(ldLdThreshold) then ("--ld-threshold " +  '"' + ldLdThreshold + '"') else ""} \
      ~{true="--no-aracne" false="" noNoArAcne} \
      ~{true="-t" false="" tT} \
      ~{if defined(alignmentAlignmentFile) then ("--alignmentfile " +  '"' + alignmentAlignmentFile + '"') else ""} \
      ~{if defined(includeIncludeList) then ("--include-list " +  '"' + includeIncludeList + '"') else ""} \
      ~{if defined(excludeExcludeList) then ("--exclude-list " +  '"' + excludeExcludeList + '"') else ""} \
      ~{if defined(mappingMappingList) then ("--mapping-list " +  '"' + mappingMappingList + '"') else ""} \
      ~{if defined(sampleSampleList) then ("--sample-list " +  '"' + sampleSampleList + '"') else ""} \
      ~{if defined(sampleSampleWeights) then ("--sample-weights " +  '"' + sampleSampleWeights + '"') else ""} \
      ~{if defined(inputInputIndexingBase) then ("--input-indexing-base " +  '"' + inputInputIndexingBase + '"') else ""} \
      ~{true="--no-filter-alignment" false="" noNoFilterAlignment} \
      ~{if defined(mafMafThreshold) then ("--maf-threshold " +  '"' + mafMafThreshold + '"') else ""} \
      ~{if defined(gapGapThreshold) then ("--gap-threshold " +  '"' + gapGapThreshold + '"') else ""} \
      ~{true="--no-sample-reweighting" false="" noNoSampleReweighting} \
      ~{if defined(sampleSampleReweightingThreshold) then ("--sample-reweighting-threshold " +  '"' + sampleSampleReweightingThreshold + '"') else ""} \
      ~{true="--rescale-sample-weights" false="" rescaleRescaleSampleWeights} \
      ~{true="--output-state-frequencies" false="" outputOutputStateFrequencies} \
      ~{true="--output-sample-weights" false="" outputOutputSampleWeights} \
      ~{true="--output-sample-distance-matrix" false="" outputOutputSampleDistanceMatrix} \
      ~{if defined(outputOutputIndexingBase) then ("--output-indexing-base " +  '"' + outputOutputIndexingBase + '"') else ""} \
      ~{true="--output-alignment" false="" outputOutputAlignment} \
      ~{true="--output-filtered-alignment" false="" outputOutputFilteredAlignment} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{true="--linear-genome" false="" linearLinearGenome} \
      ~{if defined(beginBegin) then ("--begin " +  '"' + beginBegin + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(arArAcneEdgeThreshold) then ("--aracne-edge-threshold " +  '"' + arArAcneEdgeThreshold + '"') else ""} \
      ~{if defined(arArAcneBlockSize) then ("--aracne-block-size " +  '"' + arArAcneBlockSize + '"') else ""} \
      ~{if defined(arArAcneNodeGroupingSize) then ("--aracne-node-grouping-size " +  '"' + arArAcneNodeGroupingSize + '"') else ""}
  >>>
}