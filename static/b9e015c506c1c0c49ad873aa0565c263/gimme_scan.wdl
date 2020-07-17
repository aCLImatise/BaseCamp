version 1.0

task GimmeScan {
  input {
    String? genome
    String? pfm_file
    Boolean? _fpr_fpr
    Boolean? _bgfile_background
    Boolean? _cutoff_motif
    String? n_report
    Boolean? norc
    Boolean? bed
    Boolean? table
    Boolean? score_table
    Boolean? zscore
    Boolean? gc
    Int? n_threads
    Boolean? h
    String input_file
  }
  command <<<
    gimme scan \
      ~{input_file} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(pfm_file) then ("--pfmfile " +  '"' + pfm_file + '"') else ""} \
      ~{true="-f" false="" _fpr_fpr} \
      ~{true="-B" false="" _bgfile_background} \
      ~{true="-c" false="" _cutoff_motif} \
      ~{if defined(n_report) then ("--nreport " +  '"' + n_report + '"') else ""} \
      ~{true="--norc" false="" norc} \
      ~{true="--bed" false="" bed} \
      ~{true="--table" false="" table} \
      ~{true="--score_table" false="" score_table} \
      ~{true="--zscore" false="" zscore} \
      ~{true="--gc" false="" gc} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{true="-h" false="" h}
  >>>
  parameter_meta {
    genome: "Genome"
    pfm_file: "PFM file with motifs (default: gimme.vertebrate.v5.0.pfm)"
    _fpr_fpr: ", --fpr            FPR for motif scanning (default 0.01)"
    _bgfile_background: ", --bgfile         background file for threshold"
    _cutoff_motif: ", --cutoff         motif score cutoff or file with cutoffs"
    n_report: "report the N best matches"
    norc: "don't scan reverse complement (- strand)"
    bed: "output bed format"
    table: "output counts in tabular format"
    score_table: "output maximum score in tabular format"
    zscore: "convert pfm logodds score to z-score"
    gc: "use GC frequency normalized z-score"
    n_threads: "Number of threads (default 12)"
    h: ""
    input_file: "inputfile (FASTA, BED, regions)"
  }
}