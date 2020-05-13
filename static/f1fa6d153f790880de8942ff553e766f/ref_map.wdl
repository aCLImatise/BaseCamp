version 1.0

task RefMap.pl {
  input {
    Boolean samplesSamples
    Boolean popPopMap
    Boolean sS
    Boolean outOutPath
    Boolean xX
    Boolean tT
    Boolean dD
    Boolean varVarAlpha
    Boolean gtGtAlpha
    Boolean rmRmPcrDuplicates
    Boolean ignoreIgnorePeReads
    Boolean unpairedUnpaired
    Boolean minMinSamplesPerPop
    Boolean minMinPopulations
    Boolean timeTimeComponents
  }
  command <<<
    ref_map.pl \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="-s" false="" sS} \
      ~{true="--out-path" false="" outOutPath} \
      ~{true="-X" false="" xX} \
      ~{true="-T" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="--var-alpha" false="" varVarAlpha} \
      ~{true="--gt-alpha" false="" gtGtAlpha} \
      ~{true="--rm-pcr-duplicates" false="" rmRmPcrDuplicates} \
      ~{true="--ignore-pe-reads" false="" ignoreIgnorePeReads} \
      ~{true="--unpaired" false="" unpairedUnpaired} \
      ~{true="--min-samples-per-pop" false="" minMinSamplesPerPop} \
      ~{true="--min-populations" false="" minMinPopulations} \
      ~{true="--time-components" false="" timeTimeComponents}
  >>>
}