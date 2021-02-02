version 1.0

task DASTool {
  input {
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
      ~{if (bins) then "--bins" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if (output_basename) then "--outputbasename" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (search_engine) then "--search_engine" else ""} \
      ~{if (write_bin_evals) then "--write_bin_evals" else ""} \
      ~{if (create_plots) then "--create_plots" else ""} \
      ~{if (write_bins) then "--write_bins" else ""} \
      ~{if (write_unbinned) then "--write_unbinned" else ""} \
      ~{if (proteins) then "--proteins" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (score_threshold) then "--score_threshold" else ""} \
      ~{if (duplicate_penalty) then "--duplicate_penalty" else ""} \
      ~{if (mega_bin_penalty) then "--megabin_penalty" else ""} \
      ~{if (db_directory) then "--db_directory" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    bins: "Comma separated list of tab separated scaffolds to bin tables."
    contigs: "Contigs in fasta format."
    output_basename: "Basename of output files."
    labels: "Comma separated list of binning prediction names. (optional)"
    search_engine: "Engine used for single copy gene identification [blast/diamond/usearch].\\n(default: usearch)"
    write_bin_evals: "Write evaluation for each input bin set [0/1]. (default: 1)"
    create_plots: "Create binning performance plots [0/1]. (default: 1)"
    write_bins: "Export bins as fasta files  [0/1]. (default: 0)"
    write_unbinned: "Report unbinned contigs. To export as fasta file also set write_bins==1 [0/1]. (default: 0)"
    proteins: "Predicted proteins in prodigal fasta format (>scaffoldID_geneNo).\\nGene prediction step will be skipped if given. (optional)"
    threads: "Number of threads to use. (default: 1)"
    score_threshold: "Score threshold until selection algorithm will keep selecting bins [0..1].\\n(default: 0.5)"
    duplicate_penalty: "Penalty for duplicate single copy genes per bin (weight b).\\nOnly change if you know what you're doing. [0..3]\\n(default: 0.6)"
    mega_bin_penalty: "Penalty for megabins (weight c). Only change if you know what you're doing. [0..3]\\n(default: 0.5)"
    db_directory: "Directory of single copy gene database. (default: install_dir/db)"
    resume: "Use existing predicted single copy gene files from a previous run [0/1]. (default: 0)"
    debug: "Write debug information to log file."
  }
  output {
    File out_stdout = stdout()
  }
}