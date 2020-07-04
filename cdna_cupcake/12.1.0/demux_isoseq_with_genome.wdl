version 1.0

task DemuxIsoseqWithGenome.py {
  input {
    String? job_dir
    String? mapped_faf_q
    String? read_stat
    String? classify_csv
    String? primer_names
    String? output_count_filename
  }
  command <<<
    demux_isoseq_with_genome.py \
      ~{if defined(job_dir) then ("--job_dir " +  '"' + job_dir + '"') else ""} \
      ~{if defined(mapped_faf_q) then ("--mapped_fafq " +  '"' + mapped_faf_q + '"') else ""} \
      ~{if defined(read_stat) then ("--read_stat " +  '"' + read_stat + '"') else ""} \
      ~{if defined(classify_csv) then ("--classify_csv " +  '"' + classify_csv + '"') else ""} \
      ~{if defined(primer_names) then ("--primer_names " +  '"' + primer_names + '"') else ""} \
      ~{if defined(output_count_filename) then ("--output " +  '"' + output_count_filename + '"') else ""}
  >>>
  parameter_meta {
    job_dir: "Job directory (if given, automatically finds required files)"
    mapped_faf_q: "mapped fasta/fastq (overridden by --job_dir if given)"
    read_stat: "read_stat txt (overridden by --job_dir if given)"
    classify_csv: "Classify report CSV (overriden by --job_dir if given)"
    primer_names: "Text file showing primer sample names (default: None)"
    output_count_filename: "Output count filename"
  }
}