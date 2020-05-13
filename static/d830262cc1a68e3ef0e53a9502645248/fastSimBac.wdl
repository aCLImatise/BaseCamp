version 1.0

task FastSimBac {
  input {
    String? sampleSampleSize
    String? regionRegionInBasePairs
  }
  command <<<
    fastSimBac \
      ~{sampleSampleSize} \
      ~{regionRegionInBasePairs}
  >>>
}