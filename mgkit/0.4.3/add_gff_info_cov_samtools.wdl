version 1.0

task AddGffInfoCovSamtools {
  input {
    Boolean averageAverage
    String samplesSamples
    String depthsDepths
    Int numNumSeqs
    Boolean progressProgress
  }
  command <<<
    add-gff-info cov_samtools \
      ~{true="--average" false="" averageAverage} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(depthsDepths) then ("--depths " +  '"' + depthsDepths + '"') else ""} \
      ~{if defined(numNumSeqs) then ("--num-seqs " +  '"' + numNumSeqs + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}