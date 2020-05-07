version 1.0

task MergePartitions.py {
  input {
    Boolean infoInfo
    String kKSize
    Boolean keepKeepSubsets
    Boolean forceForce
    String? graphGraphBase
  }
  command <<<
    merge-partitions.py \
      ~{graphGraphBase} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{true="--keep-subsets" false="" keepKeepSubsets} \
      ~{true="--force" false="" forceForce}
  >>>
}