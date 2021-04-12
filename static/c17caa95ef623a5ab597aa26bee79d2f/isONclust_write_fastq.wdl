version 1.0

task IsONclustWriteFastq {
  input {
    File? clusters
    File? fast_q
    Directory? out_folder
    String? write_clusters_reads
  }
  command <<<
    isONclust write_fastq \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""} \
      ~{if defined(write_clusters_reads) then ("--N " +  '"' + write_clusters_reads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isonclust:0.0.6.1--py_0"
  }
  parameter_meta {
    clusters: "the file \\\"final_clusters.csv created by isONclust.\\\""
    fast_q: "Input fastq file"
    out_folder: "Output folder"
    write_clusters_reads: "Write out clusters with more or equal than N reads"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}