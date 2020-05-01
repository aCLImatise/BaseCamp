version 1.0

task Bam2wig.sh {
  input {
    Boolean bedBedGraph
    Boolean displayDisplay
    Boolean filterFilter
    Boolean formatFormat
    Boolean headerHeader
    Boolean helpHelpFormat
    Boolean intervalInterval
    Boolean minMinDepth
    Boolean outputOutput
    Boolean partitionPartition
    Boolean pedigreePedigree
    Boolean percentilePercentile
    Boolean windowWindowShift
    Boolean windowWindowSize
  }
  command <<<
    bam2wig.sh \
      ~{true="--bedgraph" false="" bedBedGraph} \
      ~{true="--display" false="" displayDisplay} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--helpFormat" false="" helpHelpFormat} \
      ~{true="--interval" false="" intervalInterval} \
      ~{true="--mindepth" false="" minMinDepth} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--partition" false="" partitionPartition} \
      ~{true="--pedigree" false="" pedigreePedigree} \
      ~{true="--percentile" false="" percentilePercentile} \
      ~{true="--windowShift" false="" windowWindowShift} \
      ~{true="--windowSize" false="" windowWindowSize}
  >>>
}