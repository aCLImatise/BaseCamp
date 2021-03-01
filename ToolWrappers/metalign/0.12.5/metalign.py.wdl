version 1.0

task Metalignpy {
  input {
    Float? cut_off
    Directory? db_dir
    Boolean? keep_temp_files
    String? input_type
    Boolean? length_normalize
    Boolean? low_mem
    Boolean? no_quantify_unmapped
    File? output_abundances_file
    String? pct_id
    Float? min_abundance
    Boolean? rank_renormalize
    Int? read_cut_off
    File? sample_id
    Boolean? sensitive
    Boolean? strain_level
    Directory? temp_dir
    Int? threads
    Boolean? verbose
    String reads
    String data
    String setup_data_dots_h
    String database_dot
    String processing_dot
    String hit_dot
  }
  command <<<
    metalign_py \
      ~{reads} \
      ~{data} \
      ~{setup_data_dots_h} \
      ~{database_dot} \
      ~{processing_dot} \
      ~{hit_dot} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if (keep_temp_files) then "--keep_temp_files" else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if (length_normalize) then "--length_normalize" else ""} \
      ~{if (low_mem) then "--low_mem" else ""} \
      ~{if (no_quantify_unmapped) then "--no_quantify_unmapped" else ""} \
      ~{if defined(output_abundances_file) then ("--output " +  '"' + output_abundances_file + '"') else ""} \
      ~{if defined(pct_id) then ("--pct_id " +  '"' + pct_id + '"') else ""} \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if (rank_renormalize) then "--rank_renormalize" else ""} \
      ~{if defined(read_cut_off) then ("--read_cutoff " +  '"' + read_cut_off + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleID " +  '"' + sample_id + '"') else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (strain_level) then "--strain_level" else ""} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cut_off: "CMash cutoff value. Default is 0.01."
    db_dir: "Directory with all organism files in the full"
    keep_temp_files: "Retain KMC files after this script finishes."
    input_type: "Type of input file (fastq/fasta). Default: try to\\nauto-determine"
    length_normalize: "Normalize abundances by genome length."
    low_mem: "Run in low memory mode, with inexact multimapped"
    no_quantify_unmapped: "Do not factor in unmapped reads in abundance\\nestimation."
    output_abundances_file: "Output abundances file. Default: abundances.tsv"
    pct_id: "Minimum percent identity from reference to count a"
    min_abundance: "100 and 0.1."
    rank_renormalize: "Renormalize abundances to 100 pct. at each rank, e.g\\nif an organism has a species but not genus label."
    read_cut_off: "Number of reads to count an organism as present."
    sample_id: "Sample ID for output. Defaults to input file name(s)."
    sensitive: "Run in sensitive mode. Sets --cutoff value to 0.0."
    strain_level: "Profile strains (off by default)."
    temp_dir: "Directory to write temporary files to."
    threads: "Number of compute threads for Minimap2/KMC. Default: 4"
    verbose: "Print verbose output."
    reads: "Path to reads file."
    data: "Path to data/ directory with the files from"
    setup_data_dots_h: "optional arguments:"
    database_dot: "--dbinfo_in DBINFO_IN"
    processing_dot: "--min_abundance MIN_ABUNDANCE"
    hit_dot: "--precise             Run in precise mode. Overwrites --read_cutoff and"
  }
  output {
    File out_stdout = stdout()
    File out_output_abundances_file = "${in_output_abundances_file}"
  }
}