version 1.0

task HmmgsFindCuts {
  input {
    String? cutCutFinder
    String? kmKmErSize
    String? bloomBloomFilter
    String? queryQueryFiles
  }
  command <<<
    hmmgs find-cuts \
      ~{cutCutFinder} \
      ~{kmKmErSize} \
      ~{bloomBloomFilter} \
      ~{queryQueryFiles}
  >>>
}