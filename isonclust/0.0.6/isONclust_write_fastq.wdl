version 1.0

task IsONclustWriteFastq {
  input {
    String? clusters
    String? fast_q
    String? out_folder
    String? write_clusters_more
  }
  command <<<
    isONclust write_fastq \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""} \
      ~{if defined(write_clusters_more) then ("--N " +  '"' + write_clusters_more + '"') else ""}
  >>>
  parameter_meta {
    clusters: "the file \"final_clusters.csv created by isONclust.\""
    fast_q: "Input fastq file"
    out_folder: "Output folder"
    write_clusters_more: "Write out clusters with more or equal than N reads"
  }
}