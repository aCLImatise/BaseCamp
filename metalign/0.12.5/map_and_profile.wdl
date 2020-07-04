version 1.0

task MapAndProfile.py {
  input {
    String? db
    String? db_info
    String? input_type
    Boolean? length_normalize
    Boolean? low_mem
    Int? min_abundance
    Boolean? rank_renormalize
    String? output_abundances_file
    String? pct_id
    Boolean? no_quantify_unmapped
    String? read_cut_off
    String? sample_id
    String? threads
    Boolean? verbose
    String in_files
    String data
  }
  command <<<
    map_and_profile.py \
      ~{in_files} \
      ~{data} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(db_info) then ("--dbinfo " +  '"' + db_info + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{true="--length_normalize" false="" length_normalize} \
      ~{true="--low_mem" false="" low_mem} \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{true="--rank_renormalize" false="" rank_renormalize} \
      ~{if defined(output_abundances_file) then ("--output " +  '"' + output_abundances_file + '"') else ""} \
      ~{if defined(pct_id) then ("--pct_id " +  '"' + pct_id + '"') else ""} \
      ~{true="--no_quantify_unmapped" false="" no_quantify_unmapped} \
      ~{if defined(read_cut_off) then ("--read_cutoff " +  '"' + read_cut_off + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleID " +  '"' + sample_id + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    db: "Path to database from select_db.py. Required if read files given"
    db_info: "Location of db_info file. Default: data/db_info.txt"
    input_type: "Type of input file (fastq/fasta/sam). Default: try to automatically determine"
    length_normalize: "Normalize abundances by genome length."
    low_mem: "Run in low memory mode, with inexact multimapped processing."
    min_abundance: "Minimum abundance for a taxa to be included in the results. Default: 10^(-4)."
    rank_renormalize: "Renormalize abundances to 100 pct. at each rank, e.g if an organism has a species but not genus label."
    output_abundances_file: "Output abundances file. Default: abundances.txt"
    pct_id: "Minimum percent identity from reference to count a hit."
    no_quantify_unmapped: "Do not factor in unmapped reads in abundance estimation."
    read_cut_off: "Number of reads to count an organism as present."
    sample_id: "Sample ID for output. Defaults to input file name(s)."
    threads: "Number of compute threads for Minimap2. Default: 4"
    verbose: "Print verbose output."
    in_files: "sam or reads file(s) (space-delimited if multiple). Required."
    data: "Path to data/ directory with the files from setup_data.sh"
  }
}