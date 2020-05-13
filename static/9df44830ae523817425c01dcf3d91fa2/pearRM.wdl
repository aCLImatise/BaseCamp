version 1.0

task PearRM {
  input {
    Boolean forwardForwardFastQ
    Boolean reverseReverseFastQ
    Boolean outputOutput
    Boolean pPValue
    Boolean minMinOverlap
    Boolean maxMaxAssemblyLength
    Boolean minMinAssemblyLength
    Boolean minMinTrimLength
    Boolean qualityQualityThreshold
    Boolean maxMaxUncalledBase
    Boolean testTestMethod
    Boolean empiricalEmpiricalFreqs
    Boolean scoreScoreMethod
    Boolean phredPhredBase
    Boolean memoryMemory
    Boolean capCap
    Boolean threadsThreads
    Boolean nNBase
    String? pearPear
  }
  command <<<
    pearRM \
      ~{pearPear} \
      ~{true="--forward-fastq" false="" forwardForwardFastQ} \
      ~{true="--reverse-fastq" false="" reverseReverseFastQ} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--p-value" false="" pPValue} \
      ~{true="--min-overlap" false="" minMinOverlap} \
      ~{true="--max-assembly-length" false="" maxMaxAssemblyLength} \
      ~{true="--min-assembly-length" false="" minMinAssemblyLength} \
      ~{true="--min-trim-length" false="" minMinTrimLength} \
      ~{true="--quality-threshold" false="" qualityQualityThreshold} \
      ~{true="--max-uncalled-base" false="" maxMaxUncalledBase} \
      ~{true="--test-method" false="" testTestMethod} \
      ~{true="--empirical-freqs" false="" empiricalEmpiricalFreqs} \
      ~{true="--score-method" false="" scoreScoreMethod} \
      ~{true="--phred-base" false="" phredPhredBase} \
      ~{true="--memory" false="" memoryMemory} \
      ~{true="--cap" false="" capCap} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--nbase" false="" nNBase}
  >>>
}