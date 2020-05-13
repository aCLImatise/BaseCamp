version 1.0

task AnnotatePartitions.py {
  input {
    Boolean infoInfo
    String kKSize
    Boolean forceForce
    String? graphGraphBase
    String? inputInputSequenceFilename
  }
  command <<<
    annotate-partitions.py \
      ~{graphGraphBase} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{inputInputSequenceFilename}
  >>>
}