version 1.0

task DemuxIsoseqNoGenomepy {
  input {
    Directory? job_dir
    String? hq_faf_q
    String? cluster_csv
    String? classify_csv
    File? primer_names
    File? output_count_filename
  }
  command <<<
    demux_isoseq_no_genome_py \
      ~{if defined(job_dir) then ("--job_dir " +  '"' + job_dir + '"') else ""} \
      ~{if defined(hq_faf_q) then ("--hq_fafq " +  '"' + hq_faf_q + '"') else ""} \
      ~{if defined(cluster_csv) then ("--cluster_csv " +  '"' + cluster_csv + '"') else ""} \
      ~{if defined(classify_csv) then ("--classify_csv " +  '"' + classify_csv + '"') else ""} \
      ~{if defined(primer_names) then ("--primer_names " +  '"' + primer_names + '"') else ""} \
      ~{if defined(output_count_filename) then ("--output " +  '"' + output_count_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    job_dir: "Job directory (if given, automatically finds required\\nfiles)"
    hq_faf_q: "HQ isoform fasta/fastq (overridden by --job_dir if\\ngiven)"
    cluster_csv: "Cluster report CSV (overridden by --job_dir if given)"
    classify_csv: "Classify report CSV (overriden by --job_dir if given)"
    primer_names: "Text file showing primer sample names (default: None)"
    output_count_filename: "Output count filename\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_count_filename = "${in_output_count_filename}"
  }
}