version 1.0

task PhyluceProbeGetClustersFromTaxa {
  input {
    Directory? clusters
    String? db
    Array[String] tax_a
  }
  command <<<
    phyluce_probe_get_clusters_from_taxa \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""}
  >>>
  parameter_meta {
    clusters: "The directory containing cluster files"
    db: "The database to update"
    tax_a: "The taxon overlaps to use\\n"
  }
  output {
    File out_stdout = stdout()
  }
}