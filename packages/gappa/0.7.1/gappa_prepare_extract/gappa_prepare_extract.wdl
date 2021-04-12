version 1.0

task GappaPrepareExtract {
  input {
    File? j_place_path
    File? clade_list_file
    File? fast_a_path
    Float? threshold
    Boolean? point_mass
    File? color_tree_file
    Directory? samples_out_dir
    File? samples_file_prefix
    File? samples_file_suffix
    Directory? sequences_out_dir
    File? sequences_file_prefix
    File? sequences_file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa prepare extract \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(clade_list_file) then ("--clade-list-file " +  '"' + clade_list_file + '"') else ""} \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if defined(color_tree_file) then ("--color-tree-file " +  '"' + color_tree_file + '"') else ""} \
      ~{if defined(samples_out_dir) then ("--samples-out-dir " +  '"' + samples_out_dir + '"') else ""} \
      ~{if defined(samples_file_prefix) then ("--samples-file-prefix " +  '"' + samples_file_prefix + '"') else ""} \
      ~{if defined(samples_file_suffix) then ("--samples-file-suffix " +  '"' + samples_file_suffix + '"') else ""} \
      ~{if defined(sequences_out_dir) then ("--sequences-out-dir " +  '"' + sequences_out_dir + '"') else ""} \
      ~{if defined(sequences_file_prefix) then ("--sequences-file-prefix " +  '"' + sequences_file_prefix + '"') else ""} \
      ~{if defined(sequences_file_suffix) then ("--sequences-file-suffix " +  '"' + sequences_file_suffix + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    clade_list_file: ":FILE REQUIRED\\nFile containing a tab-separated list of taxon to clade mapping."
    fast_a_path: ":PATH(existing)=[] ...\\nList of fasta files or directories to process. For directories, only files with the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]` are processed."
    threshold: ":FLOAT in [0.5 - 1]=0.95\\nThreshold of how much placement mass needs to be in a clade for extracting a pquery."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    color_tree_file: ":PATH(non-existing)\\nIf a path is provided, an svg file with a tree colored by clades is written."
    samples_out_dir: "=samples\\nDirectory to write samples files to"
    samples_file_prefix: "File prefix for samples files"
    samples_file_suffix: "File suffix for samples files"
    sequences_out_dir: "=sequences\\nDirectory to write sequences files to"
    sequences_file_prefix: "File prefix for sequences files"
    sequences_file_suffix: "File suffix for sequences files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}