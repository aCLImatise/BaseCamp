version 1.0

task PartitionGtf2gb.pl {
  input {
    String minMinClusterSize
    String maxMaxFlankingRegionSize
    Boolean verboseVerbose
    String? sourceSource
    String? cdsCds
    String? cdsCds
  }
  command <<<
    partition_gtf2gb.pl \
      ~{sourceSource} \
      ~{if defined(minMinClusterSize) then ("--minClusterSize " +  '"' + minMinClusterSize + '"') else ""} \
      ~{if defined(maxMaxFlankingRegionSize) then ("--maxFlankingRegionSize " +  '"' + maxMaxFlankingRegionSize + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{cdsCds} \
      ~{cdsCds}
  >>>
}