version 1.0

task PhyluceProbeGetClustersFromTaxa {
  input {
    String clustersClusters
    String dbDb
    Array[String]+ taxTaxA
  }
  command <<<
    phyluce_probe_get_clusters_from_taxa \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""}
  >>>
}