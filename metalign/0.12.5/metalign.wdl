version 1.0

task Metalign.py {
  input {
    String? cut_off
    String? db_dir
    String? db_info_in
    Boolean? keep_temp_files
    String? input_type
    Boolean? length_normalize
    Boolean? low_mem
    Int? min_abundance
    Boolean? no_quantify_unmapped
    String? output_abundances_file
    String? pct_id
    Boolean? precise
    Boolean? rank_renormalize
    String? read_cut_off
    String? sample_id
    Boolean? sensitive
    Boolean? strain_level
    String? temp_dir
    String? threads
    Boolean? verbose
    String reads
    String data
  }
  command <<<
    metalign.py \
      ~{reads} \
      ~{data} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(db_dir) then ("--db_dir " +  '"' + db_dir + '"') else ""} \
      ~{if defined(db_info_in) then ("--dbinfo_in " +  '"' + db_info_in + '"') else ""} \
      ~{true="--keep_temp_files" false="" keep_temp_files} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{true="--length_normalize" false="" length_normalize} \
      ~{true="--low_mem" false="" low_mem} \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{true="--no_quantify_unmapped" false="" no_quantify_unmapped} \
      ~{if defined(output_abundances_file) then ("--output " +  '"' + output_abundances_file + '"') else ""} \
      ~{if defined(pct_id) then ("--pct_id " +  '"' + pct_id + '"') else ""} \
      ~{true="--precise" false="" precise} \
      ~{true="--rank_renormalize" false="" rank_renormalize} \
      ~{if defined(read_cut_off) then ("--read_cutoff " +  '"' + read_cut_off + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleID " +  '"' + sample_id + '"') else ""} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--strain_level" false="" strain_level} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    cut_off: "CMash cutoff value. Default is 0.01."
    db_dir: "Directory with all organism files in the full database."
    db_info_in: "Location of db_info file. Default: data/db_info.txt"
    keep_temp_files: "Retain KMC files after this script finishes."
    input_type: "Type of input file (fastq/fasta). Default: try to auto-determine"
    length_normalize: "Normalize abundances by genome length."
    low_mem: "Run in low memory mode, with inexact multimapped processing."
    min_abundance: "Minimum abundance for a taxa to be included in the results. Default: 10^(-4)."
    no_quantify_unmapped: "Do not factor in unmapped reads in abundance estimation."
    output_abundances_file: "Output abundances file. Default: abundances.tsv"
    pct_id: "Minimum percent identity from reference to count a hit."
    precise: "Run in precise mode. Overwrites --read_cutoff and --min_abundance to 100 and 0.1."
    rank_renormalize: "Renormalize abundances to 100 pct. at each rank, e.g if an organism has a species but not genus label."
    read_cut_off: "Number of reads to count an organism as present."
    sample_id: "Sample ID for output. Defaults to input file name(s)."
    sensitive: "Run in sensitive mode. Sets --cutoff value to 0.0."
    strain_level: "Profile strains (off by default)."
    temp_dir: "Directory to write temporary files to."
    threads: "Number of compute threads for Minimap2/KMC. Default: 4"
    verbose: "Print verbose output."
    reads: "Path to reads file."
    data: "Path to data/ directory with the files from setup_data.sh"
  }
}