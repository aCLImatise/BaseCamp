version 1.0

task DenovoMap.pl {
  input {
    Boolean samplesSamples
    Boolean popPopMap
    Boolean outOutPath
    Boolean xX
    Boolean threadsThreads
    Boolean dryDryRun
    Boolean resumeResume
    Boolean mM
    Boolean nN
    Boolean varVarAlpha
    Boolean gtGtAlpha
    Boolean pairedPaired
    Boolean rmRmPcrDuplicates
    Boolean minMinSamplesPerPop
    Boolean minMinPopulations
    Boolean timeTimeComponents
  }
  command <<<
    denovo_map.pl \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--out-path" false="" outOutPath} \
      ~{true="-X" false="" xX} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--resume" false="" resumeResume} \
      ~{true="-M" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="--var-alpha" false="" varVarAlpha} \
      ~{true="--gt-alpha" false="" gtGtAlpha} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--rm-pcr-duplicates" false="" rmRmPcrDuplicates} \
      ~{true="--min-samples-per-pop" false="" minMinSamplesPerPop} \
      ~{true="--min-populations" false="" minMinPopulations} \
      ~{true="--time-components" false="" timeTimeComponents}
  >>>
}