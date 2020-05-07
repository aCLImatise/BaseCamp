version 1.0

task PhyluceAlignSeqcapAlign {
  input {
    String fastFastA
    String outputOutput
    String taxTaxA
    String alignerAligner
    String outputOutputFormat
    String verbosityVerbosity
    String logLogPath
    Boolean incompleteIncompleteMatrix
    Boolean noNoTrim
    String windowWindow
    String proportionProportion
    String thresholdThreshold
    Int maxMaxDivergence
    Int minMinLength
    Boolean ambiguousAmbiguous
    String coresCores
  }
  command <<<
    phyluce_align_seqcap_align \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{true="--incomplete-matrix" false="" incompleteIncompleteMatrix} \
      ~{true="--no-trim" false="" noNoTrim} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(proportionProportion) then ("--proportion " +  '"' + proportionProportion + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("--max-divergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{true="--ambiguous" false="" ambiguousAmbiguous} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}