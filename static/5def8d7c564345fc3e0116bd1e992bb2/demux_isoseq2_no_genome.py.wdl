version 1.0

task DemuxIsoseq2NoGenomepy {
  input {
    Directory? job_dir
    String? hq_fast_q
    String? cluster_csv
    String? classify_csv
    File? output_count_filename
  }
  command <<<
    demux_isoseq2_no_genome_py \
      ~{if defined(job_dir) then ("--job_dir " +  '"' + job_dir + '"') else ""} \
      ~{if defined(hq_fast_q) then ("--hq_fastq " +  '"' + hq_fast_q + '"') else ""} \
      ~{if defined(cluster_csv) then ("--cluster_csv " +  '"' + cluster_csv + '"') else ""} \
      ~{if defined(classify_csv) then ("--classify_csv " +  '"' + classify_csv + '"') else ""} \
      ~{if defined(output_count_filename) then ("--output " +  '"' + output_count_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    job_dir: "Job directory (if given, automatically finds required\\nfiles)"
    hq_fast_q: "HQ isoform fastq (overridden by --job_dir if given)"
    cluster_csv: "Cluster report CSV (overridden by --job_dir if given)"
    classify_csv: "Classify report CSV (overriden by --job_dir if given)"
    output_count_filename: "Output count filename\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_count_filename = "${in_output_count_filename}"
  }
}