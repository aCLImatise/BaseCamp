version 1.0

task GappaPreparePhat {
  input {
    File? taxonomy_file
    File? sequence_file
    Int? target_size
    String? sub_taxonomy
    Int? min_sub_clade_size
    Int? max_sub_clade_size
    Int? min_tax_level
    Boolean? allow_approximation
    Boolean? no_tax_a_selection
    String? consensus_method
    Float? consensus_threshold
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? write_info_files
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa prepare phat \
      ~{if defined(taxonomy_file) then ("--taxonomy-file " +  '"' + taxonomy_file + '"') else ""} \
      ~{if defined(sequence_file) then ("--sequence-file " +  '"' + sequence_file + '"') else ""} \
      ~{if defined(target_size) then ("--target-size " +  '"' + target_size + '"') else ""} \
      ~{if defined(sub_taxonomy) then ("--sub-taxonomy " +  '"' + sub_taxonomy + '"') else ""} \
      ~{if defined(min_sub_clade_size) then ("--min-subclade-size " +  '"' + min_sub_clade_size + '"') else ""} \
      ~{if defined(max_sub_clade_size) then ("--max-subclade-size " +  '"' + max_sub_clade_size + '"') else ""} \
      ~{if defined(min_tax_level) then ("--min-tax-level " +  '"' + min_tax_level + '"') else ""} \
      ~{if (allow_approximation) then "--allow-approximation" else ""} \
      ~{if (no_tax_a_selection) then "--no-taxa-selection" else ""} \
      ~{if defined(consensus_method) then ("--consensus-method " +  '"' + consensus_method + '"') else ""} \
      ~{if defined(consensus_threshold) then ("--consensus-threshold " +  '"' + consensus_threshold + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (write_info_files) then "--write-info-files" else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    taxonomy_file: ":FILE REQUIRED\\nFile that lists the taxa of the database."
    sequence_file: ":FILE REQUIRED\\nFasta file containing the sequences of the database."
    target_size: "=0 REQUIRED\\nTarget size of how many taxa to select for building consensus sequences."
    sub_taxonomy: "If a taxopath from the taxonomy is provided, only the respective sub-taxonomy is used."
    min_sub_clade_size: "=0  Minimal size of sub-clades. Everything below is expanded."
    max_sub_clade_size: "=0  Maximal size of a non-expanded sub-clades. Everything bigger is first expanded."
    min_tax_level: "=0      Minimal taxonomic level. Taxa below this level are always expanded."
    allow_approximation: "Allow to expand taxa that help getting closer to the --target-size, even if they are not the ones with the highest entropy."
    no_tax_a_selection: "If set, no taxa selection using entropy is performed. Instead, all taxa on all levels/ranks are used and consensus sequences for all of them are calculated. This is useful for testing and to try out new ideas."
    consensus_method: ":{majorities,cavener,threshold}=majorities\\nConsensus method to use for combining sequences."
    consensus_threshold: ":FLOAT in [0 - 1]=0.5 Needs: --consensus-method\\nThreshold value to use with --consensus-method threshold. Has to be in [ 0.0, 1.0 ]."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    write_info_files: "If set, two additional info files are written, containing the new pruned taxonomy, as well as the entropy of all clades of the original taxonomy."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}