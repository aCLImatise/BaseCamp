version 1.0

task OverlapInCore {
  input {
    String? seqSeqStorepath
  }
  command <<<
    overlapInCore \
      ~{seqSeqStorepath}
  >>>
}