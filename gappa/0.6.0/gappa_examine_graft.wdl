version 1.0

task GappaExamineGraft {
  input {
    String? j_place_path
    Boolean? fully_resolve
    String? name_prefix
    String? out_dir
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa examine graft \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{true="--fully-resolve" false="" fully_resolve} \
      ~{if defined(name_prefix) then ("--name-prefix " +  '"' + name_prefix + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    fully_resolve: "If set, branches that contain multiple pqueries are resolved by creating a new branch for each of the pqueries individually, placed according to their distal/proximal lengths. If not set (default), all pqueries at one branch are collected in a subtree that branches off from the branch."
    name_prefix: "Specify a prefix to be added to all new leaf nodes, i.e., to the query sequence names."
    out_dir: "=.            Directory to write files to"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}