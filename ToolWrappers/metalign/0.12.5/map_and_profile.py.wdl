version 1.0

task MapAndProfilepy {
  input {
    File? db
    File? db_info
    String? input_type
    Boolean? length_normalize
    Boolean? low_mem
    Boolean? rank_renormalize
    File? output_abundances_file
    String? pct_id
    File? sample_id
    Int? threads
    Boolean? verbose
    String in_files
    String required_dot
    String setup_data_dots_h
    String processing_dot
    String estimation_dot
  }
  command <<<
    map_and_profile_py \
      ~{in_files} \
      ~{required_dot} \
      ~{setup_data_dots_h} \
      ~{processing_dot} \
      ~{estimation_dot} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_info) then ("--dbinfo " +  '"' + db_info + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if (length_normalize) then "--length_normalize" else ""} \
      ~{if (low_mem) then "--low_mem" else ""} \
      ~{if (rank_renormalize) then "--rank_renormalize" else ""} \
      ~{if defined(output_abundances_file) then ("--output " +  '"' + output_abundances_file + '"') else ""} \
      ~{if defined(pct_id) then ("--pct_id " +  '"' + pct_id + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleID " +  '"' + sample_id + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Path to database from select_db.py. Required if read\\nfiles given"
    db_info: "Location of db_info file. Default: data/db_info.txt"
    input_type: "Type of input file (fastq/fasta/sam). Default: try to\\nautomatically determine"
    length_normalize: "Normalize abundances by genome length."
    low_mem: "Run in low memory mode, with inexact multimapped"
    rank_renormalize: "Renormalize abundances to 100 pct. at each rank, e.g\\nif an organism has a species but not genus label."
    output_abundances_file: "Output abundances file. Default: abundances.txt"
    pct_id: "Minimum percent identity from reference to count a"
    sample_id: "Sample ID for output. Defaults to input file name(s)."
    threads: "Number of compute threads for Minimap2. Default: 4"
    verbose: "Print verbose output."
    in_files: "sam or reads file(s) (space-delimited if multiple)."
    required_dot: "data                  Path to data/ directory with the files from"
    setup_data_dots_h: "optional arguments:"
    processing_dot: "--min_abundance MIN_ABUNDANCE"
    estimation_dot: "--read_cutoff READ_CUTOFF"
  }
  output {
    File out_stdout = stdout()
    File out_output_abundances_file = "${in_output_abundances_file}"
  }
}