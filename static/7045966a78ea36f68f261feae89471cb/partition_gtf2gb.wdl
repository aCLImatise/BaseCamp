version 1.0

task PartitionGtf2gb.pl {
  input {
    String? min_cluster_size
    String? max_flanking_region_size
    Boolean? verbose
  }
  command <<<
    partition_gtf2gb.pl \
      ~{if defined(min_cluster_size) then ("--minClusterSize " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(max_flanking_region_size) then ("--maxFlankingRegionSize " +  '"' + max_flanking_region_size + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_cluster_size: "minimal number of genes in a one cluster,  default n=20"
    max_flanking_region_size: "maximal size of flanking intergenic region to be  excised around clusters of genes, default n=2000"
    verbose: "print verbose warning messages"
  }
}