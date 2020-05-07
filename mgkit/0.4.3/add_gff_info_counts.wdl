version 1.0

task AddGffInfoCounts {
  input {
    String samplesSamples
    String countCountFiles
    Boolean fpFpKms
    Boolean featureFeatureCounts
    Boolean progressProgress
  }
  command <<<
    add-gff-info counts \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(countCountFiles) then ("--count-files " +  '"' + countCountFiles + '"') else ""} \
      ~{true="--fpkms" false="" fpFpKms} \
      ~{true="--featureCounts" false="" featureFeatureCounts} \
      ~{true="--progress" false="" progressProgress}
  >>>
}