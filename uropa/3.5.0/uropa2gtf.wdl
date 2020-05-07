version 1.0

task Uropa2gtf.R {
  input {
    Boolean inputInput
    Boolean gtfGtfSource
    Boolean featureFeature
    Boolean threadsThreads
  }
  command <<<
    uropa2gtf.R \
      ~{true="--input" false="" inputInput} \
      ~{true="--gtf_source" false="" gtfGtfSource} \
      ~{true="--feature" false="" featureFeature} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}