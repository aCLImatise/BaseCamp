version 1.0

task DemuxIsoseqWithGenomepy {
  input {
    Directory? job_dir
    String? mapped_faf_q
    String? read_stat
    String? classify_csv
    File? primer_names
    File? output_count_filename
  }
  command <<<
    demux_isoseq_with_genome_py \
      ~{if defined(job_dir) then ("--job_dir " +  '"' + job_dir + '"') else ""} \
      ~{if defined(mapped_faf_q) then ("--mapped_fafq " +  '"' + mapped_faf_q + '"') else ""} \
      ~{if defined(read_stat) then ("--read_stat " +  '"' + read_stat + '"') else ""} \
      ~{if defined(classify_csv) then ("--classify_csv " +  '"' + classify_csv + '"') else ""} \
      ~{if defined(primer_names) then ("--primer_names " +  '"' + primer_names + '"') else ""} \
      ~{if defined(output_count_filename) then ("--output " +  '"' + output_count_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    job_dir: "Job directory (if given, automatically finds required\\nfiles)"
    mapped_faf_q: "mapped fasta/fastq (overridden by --job_dir if given)"
    read_stat: "read_stat txt (overridden by --job_dir if given)"
    classify_csv: "Classify report CSV (overriden by --job_dir if given)"
    primer_names: "Text file showing primer sample names (default: None)"
    output_count_filename: "Output count filename\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_count_filename = "${in_output_count_filename}"
  }
}