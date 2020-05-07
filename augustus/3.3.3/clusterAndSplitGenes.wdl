version 1.0

task ClusterAndSplitGenes.pl {
  input {
    Boolean verboseVerbose
    Boolean txTxFormat
    String chunksizeChunksize
    String genesGenes
    String genesGenesPrefix
    String filterFilterMap
    String clustersClusters
    String maxMaxClusterSize
  }
  command <<<
    clusterAndSplitGenes.pl \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--txformat" false="" txTxFormat} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(genesGenesPrefix) then ("--genesprefix " +  '"' + genesGenesPrefix + '"') else ""} \
      ~{if defined(filterFilterMap) then ("--filtermap " +  '"' + filterFilterMap + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(maxMaxClusterSize) then ("--maxclustersize " +  '"' + maxMaxClusterSize + '"') else ""}
  >>>
}