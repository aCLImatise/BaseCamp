version 1.0

task GappaPrepareExtract {
  input {
    String? j_place_path
    String? clade_list_file
    String? fast_a_path
    Float? threshold
    Boolean? point_mass
    String? color_tree_file
    String? samples_out_dir
    String? sequences_out_dir
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa prepare extract \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(clade_list_file) then ("--clade-list-file " +  '"' + clade_list_file + '"') else ""} \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--point-mass" false="" point_mass} \
      ~{if defined(color_tree_file) then ("--color-tree-file " +  '"' + color_tree_file + '"') else ""} \
      ~{if defined(samples_out_dir) then ("--samples-out-dir " +  '"' + samples_out_dir + '"') else ""} \
      ~{if defined(sequences_out_dir) then ("--sequences-out-dir " +  '"' + sequences_out_dir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    clade_list_file: ":FILE REQUIRED File containing a tab-separated list of taxon to clade mapping."
    fast_a_path: ":PATH(existing)=[] ... List of fasta files or directories to process. For directories, only files with the extension .(fasta|fas|fsa|fna|ffn|faa|frn) are processed."
    threshold: ":FLOAT in [0.5 - 1]=0.95 Threshold of how much placement mass needs to be in a clade for extracting a pquery."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    color_tree_file: ":PATH(non-existing) If a path is provided, an svg file with a tree colored by clades is written."
    samples_out_dir: "=samples Directory to write samples files to"
    sequences_out_dir: "=sequences Directory to write sequences files to"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}