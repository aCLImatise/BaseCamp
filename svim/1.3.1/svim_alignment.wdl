version 1.0

task SvimAlignment {
  input {
    Int minMinMapq
    Int minMinSvSize
    Int maxMaxSvSize
    String segmentSegmentGapTolerance
    String segmentSegmentOverlapTolerance
    String partitionPartitionMaxDistance
    String distanceDistanceNormalizer
    String clusterClusterMaxDistance
    String delDelInsDupMaxDistance
    String transTransDestinationPartitionMaxDistance
    String transTransPartitionMaxDistance
    String transTransSvMaxDistance
    Boolean skipSkipGenotyping
    Int minimumMinimumScore
    String homozygousHomozygousThreshold
    String heterozygousHeterozygousThreshold
    Int minimumMinimumDepth
    String sampleSample
    String typesTypes
    Boolean sequenceSequenceAlleles
    Boolean insertionInsertionSequences
    Boolean tandemTandemDuplicationsAsInsertions
    Boolean interspersedInterspersedDuplicationsAsInsertions
    Boolean readReadNames
    Boolean zZMws
    String? workingWorkingDir
    String? bamBamFile
    String? genomeGenome
  }
  command <<<
    svim alignment \
      ~{workingWorkingDir} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinSvSize) then ("--min_sv_size " +  '"' + minMinSvSize + '"') else ""} \
      ~{if defined(maxMaxSvSize) then ("--max_sv_size " +  '"' + maxMaxSvSize + '"') else ""} \
      ~{if defined(segmentSegmentGapTolerance) then ("--segment_gap_tolerance " +  '"' + segmentSegmentGapTolerance + '"') else ""} \
      ~{if defined(segmentSegmentOverlapTolerance) then ("--segment_overlap_tolerance " +  '"' + segmentSegmentOverlapTolerance + '"') else ""} \
      ~{if defined(partitionPartitionMaxDistance) then ("--partition_max_distance " +  '"' + partitionPartitionMaxDistance + '"') else ""} \
      ~{if defined(distanceDistanceNormalizer) then ("--distance_normalizer " +  '"' + distanceDistanceNormalizer + '"') else ""} \
      ~{if defined(clusterClusterMaxDistance) then ("--cluster_max_distance " +  '"' + clusterClusterMaxDistance + '"') else ""} \
      ~{if defined(delDelInsDupMaxDistance) then ("--del_ins_dup_max_distance " +  '"' + delDelInsDupMaxDistance + '"') else ""} \
      ~{if defined(transTransDestinationPartitionMaxDistance) then ("--trans_destination_partition_max_distance " +  '"' + transTransDestinationPartitionMaxDistance + '"') else ""} \
      ~{if defined(transTransPartitionMaxDistance) then ("--trans_partition_max_distance " +  '"' + transTransPartitionMaxDistance + '"') else ""} \
      ~{if defined(transTransSvMaxDistance) then ("--trans_sv_max_distance " +  '"' + transTransSvMaxDistance + '"') else ""} \
      ~{true="--skip_genotyping" false="" skipSkipGenotyping} \
      ~{if defined(minimumMinimumScore) then ("--minimum_score " +  '"' + minimumMinimumScore + '"') else ""} \
      ~{if defined(homozygousHomozygousThreshold) then ("--homozygous_threshold " +  '"' + homozygousHomozygousThreshold + '"') else ""} \
      ~{if defined(heterozygousHeterozygousThreshold) then ("--heterozygous_threshold " +  '"' + heterozygousHeterozygousThreshold + '"') else ""} \
      ~{if defined(minimumMinimumDepth) then ("--minimum_depth " +  '"' + minimumMinimumDepth + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{true="--sequence_alleles" false="" sequenceSequenceAlleles} \
      ~{true="--insertion_sequences" false="" insertionInsertionSequences} \
      ~{true="--tandem_duplications_as_insertions" false="" tandemTandemDuplicationsAsInsertions} \
      ~{true="--interspersed_duplications_as_insertions" false="" interspersedInterspersedDuplicationsAsInsertions} \
      ~{true="--read_names" false="" readReadNames} \
      ~{true="--zmws" false="" zZMws} \
      ~{bamBamFile} \
      ~{genomeGenome}
  >>>
}