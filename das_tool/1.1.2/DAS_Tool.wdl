version 1.0

task DASTool {
  input {
    String? methodn_c_contigsfa
    Boolean? bins
    Boolean? contigs
    Boolean? output_basename
    Boolean? labels
    Boolean? search_engine
    Boolean? write_bin_evals
    Boolean? create_plots
    Boolean? write_bins
    Boolean? write_unbinned
    Boolean? proteins
    Boolean? threads
    Boolean? score_threshold
    Boolean? duplicate_penalty
    Boolean? mega_bin_penalty
    Boolean? db_directory
    Boolean? resume
    Boolean? debug
  }
  command <<<
    DAS_Tool \
      ~{if defined(methodn_c_contigsfa) then ("-l " +  '"' + methodn_c_contigsfa + '"') else ""} \
      ~{true="--bins" false="" bins} \
      ~{true="--contigs" false="" contigs} \
      ~{true="--outputbasename" false="" output_basename} \
      ~{true="--labels" false="" labels} \
      ~{true="--search_engine" false="" search_engine} \
      ~{true="--write_bin_evals" false="" write_bin_evals} \
      ~{true="--create_plots" false="" create_plots} \
      ~{true="--write_bins" false="" write_bins} \
      ~{true="--write_unbinned" false="" write_unbinned} \
      ~{true="--proteins" false="" proteins} \
      ~{true="--threads" false="" threads} \
      ~{true="--score_threshold" false="" score_threshold} \
      ~{true="--duplicate_penalty" false="" duplicate_penalty} \
      ~{true="--megabin_penalty" false="" mega_bin_penalty} \
      ~{true="--db_directory" false="" db_directory} \
      ~{true="--resume" false="" resume} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    methodn_c_contigsfa: ",...,methodN -c contigs.fa -o myOutput"
    bins: "Comma separated list of tab separated scaffolds to bin tables."
    contigs: "Contigs in fasta format."
    output_basename: "Basename of output files."
    labels: "Comma separated list of binning prediction names. (optional)"
    search_engine: "Engine used for single copy gene identification [blast/diamond/usearch]. (default: usearch)"
    write_bin_evals: "Write evaluation for each input bin set [0/1]. (default: 1)"
    create_plots: "Create binning performance plots [0/1]. (default: 1)"
    write_bins: "Export bins as fasta files  [0/1]. (default: 0)"
    write_unbinned: "Report unbinned contigs. To export as fasta file also set write_bins==1 [0/1]. (default: 0)"
    proteins: "Predicted proteins in prodigal fasta format (>scaffoldID_geneNo). Gene prediction step will be skipped if given. (optional)"
    threads: "Number of threads to use. (default: 1)"
    score_threshold: "Score threshold until selection algorithm will keep selecting bins [0..1]. (default: 0.5)"
    duplicate_penalty: "Penalty for duplicate single copy genes per bin (weight b). Only change if you know what you're doing. [0..3] (default: 0.6)"
    mega_bin_penalty: "Penalty for megabins (weight c). Only change if you know what you're doing. [0..3] (default: 0.5)"
    db_directory: "Directory of single copy gene database. (default: install_dir/db)"
    resume: "Use existing predicted single copy gene files from a previous run [0/1]. (default: 0)"
    debug: "Write debug information to log file."
  }
}