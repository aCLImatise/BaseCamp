version 1.0

task AbyssOverlap {
  input {
    String minMin
    String maxMax
    String threadsThreads
    String sampleSample
    Boolean tredTred
    Boolean noNoTred
    Boolean adjAdj
    Boolean dotDot
    Boolean samSam
    Boolean ssSs
    Boolean noNoSs
    Boolean verboseVerbose
  }
  command <<<
    abyss-overlap \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--tred" false="" tredTred} \
      ~{true="--no-tred" false="" noNoTred} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--sam" false="" samSam} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}