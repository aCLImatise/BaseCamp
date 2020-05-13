version 1.0

task ExtractPartitions.py {
  input {
    Boolean infoInfo
    Int maxMaxSize
    Int minMinPartitionSize
    Boolean noNoOutputGroups
    Boolean outputOutputUnassigned
    Boolean forceForce
    Boolean gzipGzip
    Boolean bzipBzip
  }
  command <<<
    extract-partitions.py \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(maxMaxSize) then ("--max-size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(minMinPartitionSize) then ("--min-partition-size " +  '"' + minMinPartitionSize + '"') else ""} \
      ~{true="--no-output-groups" false="" noNoOutputGroups} \
      ~{true="--output-unassigned" false="" outputOutputUnassigned} \
      ~{true="--force" false="" forceForce} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip" false="" bzipBzip}
  >>>
}