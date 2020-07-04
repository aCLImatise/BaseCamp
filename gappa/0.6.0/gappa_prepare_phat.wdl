version 1.0

task GappaPreparePhat {
  input {
    String? taxonomy_file
    String? sequence_file
    String? target_size
    String? sub_taxonomy
    String? min_sub_clade_size
    String? max_sub_clade_size
    String? min_tax_level
    Boolean? allow_approximation
    Boolean? no_tax_a_selection
    String? consensus_method
    Float? consensus_threshold
    String? out_dir
    Boolean? write_info_files
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
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
      ~{true="--allow-approximation" false="" allow_approximation} \
      ~{true="--no-taxa-selection" false="" no_tax_a_selection} \
      ~{if defined(consensus_method) then ("--consensus-method " +  '"' + consensus_method + '"') else ""} \
      ~{if defined(consensus_threshold) then ("--consensus-threshold " +  '"' + consensus_threshold + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--write-info-files" false="" write_info_files} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    taxonomy_file: ":FILE REQUIRED File that lists the taxa of the database."
    sequence_file: ":FILE REQUIRED Fasta file containing the sequences of the database."
    target_size: "=0 REQUIRED Target size of how many taxa to select for building consensus sequences."
    sub_taxonomy: "If a taxopath from the taxonomy is provided, only the respective sub-taxonomy is used."
    min_sub_clade_size: "=0  Minimal size of sub-clades. Everything below is expanded."
    max_sub_clade_size: "=0  Maximal size of a non-expanded sub-clades. Everything bigger is first expanded."
    min_tax_level: "=0      Minimal taxonomic level. Taxa below this level are always expanded."
    allow_approximation: "Allow to expand taxa that help getting closer to the --target-size, even if they are not the ones with the highest entropy."
    no_tax_a_selection: "If set, no taxa selection using entropy is performed. Instead, all taxa on all levels/ranks are used and consensus sequences for all of them are calculated. This is useful for testing and to try out new ideas."
    consensus_method: ":{majorities,cavener,threshold}=majorities Consensus method to use for combining sequences."
    consensus_threshold: ":FLOAT in [0 - 1]=0.5 Needs: --consensus-method Threshold value to use with --consensus-method threshold. Has to be in [ 0.0, 1.0 ]."
    out_dir: "=.            Directory to write files to"
    write_info_files: "If set, two additional info files are written, containing the new pruned taxonomy, as well as the entropy of all clades of the original taxonomy."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}