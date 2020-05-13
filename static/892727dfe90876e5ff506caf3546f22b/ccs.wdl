version 1.0

task Ccs {
  input {
    Boolean minMinPasses
    Boolean minMinSnr
    Boolean minMinLength
    Boolean maxMaxLength
    Boolean chunkChunk
    Boolean maxMaxChunks
    Boolean modelModelPath
    Boolean modelModelSpec
    Boolean byByStrand
    Boolean skipSkipPolish
    Boolean minMinRq
    Boolean reportReportFile
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    ccs \
      ~{true="--min-passes" false="" minMinPasses} \
      ~{true="--min-snr" false="" minMinSnr} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--max-length" false="" maxMaxLength} \
      ~{true="--chunk" false="" chunkChunk} \
      ~{true="--max-chunks" false="" maxMaxChunks} \
      ~{true="--model-path" false="" modelModelPath} \
      ~{true="--model-spec" false="" modelModelSpec} \
      ~{true="--by-strand" false="" byByStrand} \
      ~{true="--skip-polish" false="" skipSkipPolish} \
      ~{true="--min-rq" false="" minMinRq} \
      ~{true="--report-file" false="" reportReportFile} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}