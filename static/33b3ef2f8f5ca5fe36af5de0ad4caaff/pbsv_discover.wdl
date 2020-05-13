version 1.0

task PbsvDiscover {
  input {
    Boolean sampleSample
    Boolean minMinMapq
    Boolean minMinRefSpan
    Boolean downDownSampleWindowLength
    Boolean downDownSampleMaxAlignments
    Boolean regionRegion
    Boolean minMinSvSigLength
    Boolean tandemTandemRepeats
    Boolean maxMaxSkipSplit
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    pbsv discover \
      ~{true="--sample" false="" sampleSample} \
      ~{true="--min-mapq" false="" minMinMapq} \
      ~{true="--min-ref-span" false="" minMinRefSpan} \
      ~{true="--downsample-window-length" false="" downDownSampleWindowLength} \
      ~{true="--downsample-max-alignments" false="" downDownSampleMaxAlignments} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--min-svsig-length" false="" minMinSvSigLength} \
      ~{true="--tandem-repeats" false="" tandemTandemRepeats} \
      ~{true="--max-skip-split" false="" maxMaxSkipSplit} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}