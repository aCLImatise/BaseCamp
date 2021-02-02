version 1.0

task IsONclust2 {
  input {
    Boolean? batch_size
    Boolean? batch_max_seq
    Boolean? km_er_size
    Boolean? window_size
    Boolean? min_shared
    Boolean? min_qual
    Boolean? mode
    Boolean? low_cons_size
    Boolean? max_cons_size
    Boolean? cons_period
    Boolean? mapped_threshold
    Float? aligned_threshold
    Boolean? min_fraction
    Boolean? min_prob_no_hits
    Boolean? min_cls_size
    Directory? out_folder
    Boolean? verbose
    Boolean? debug
    Boolean? left_batch
    Boolean? right_batch
    Boolean? outfile
    Boolean? spo_a_algo
    Boolean? min_purge
    Boolean? keep_seq
    Boolean? quiet
    Directory? outdir
    Boolean? index
  }
  command <<<
    isONclust2 \
      ~{if (batch_size) then "--batch-size" else ""} \
      ~{if (batch_max_seq) then "--batch-max-seq" else ""} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (window_size) then "--window-size" else ""} \
      ~{if (min_shared) then "--min-shared" else ""} \
      ~{if (min_qual) then "--min-qual" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (low_cons_size) then "--low-cons-size" else ""} \
      ~{if (max_cons_size) then "--max-cons-size" else ""} \
      ~{if (cons_period) then "--cons-period" else ""} \
      ~{if (mapped_threshold) then "--mapped-threshold" else ""} \
      ~{if defined(aligned_threshold) then ("--aligned-threshold " +  '"' + aligned_threshold + '"') else ""} \
      ~{if (min_fraction) then "--min-fraction" else ""} \
      ~{if (min_prob_no_hits) then "--min-prob-no-hits" else ""} \
      ~{if (min_cls_size) then "--min-cls-size" else ""} \
      ~{if (out_folder) then "--outfolder" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (left_batch) then "--left-batch" else ""} \
      ~{if (right_batch) then "--right-batch" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (spo_a_algo) then "--spoa-algo" else ""} \
      ~{if (min_purge) then "--min-purge" else ""} \
      ~{if (keep_seq) then "--keep-seq" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (index) then "--index" else ""}
  >>>
  parameter_meta {
    batch_size: "Batch size in kilobases (default: 50000)"
    batch_max_seq: "Maximum number of sequences per batch (default: 3000)."
    km_er_size: "Kmer size (default: 11)."
    window_size: "Window size (default: 15)."
    min_shared: "Minimum number of minimizers shared between read and cluster (default: 5)."
    min_qual: "Minimum average quality value (default: 7.0)."
    mode: "Clustering mode:\\n* sahlin (default): use minimizers first, alignment second\\n* fast: use minimizers only\\n* furious: always use alignment"
    low_cons_size: "Use all sequences for consensus below this size (default: 20)."
    max_cons_size: "Maximum number of sequences used for consensus (default: 150)."
    cons_period: "Do not recalculate consensus after this many seuqences added (default: 500)."
    mapped_threshold: "Minmum mapped fraction of read to be     included in cluster (default: 0.65)."
    aligned_threshold: "aligned fraction of read to be included in cluster (default: 0.2)."
    min_fraction: "Minimum fraction of minimizers shared compared to best hit, in order to continue mapping (default: 0.8)."
    min_prob_no_hits: "Minimum probability for i consecutive    minimizers to be different between read and representative (default: 0.1)"
    min_cls_size: "Skip clusters smaller than this in the left batch (default: 3)."
    out_folder: "Output folder (default:  ./isONclust2_batches)."
    verbose: "Verbose output."
    debug: "Print debug info."
    left_batch: "Left input batch (mandatory)."
    right_batch: "Right input batch (optional)."
    outfile: "Output batch."
    spo_a_algo: "spoa alignment algorithm:\\n* 0 (default): local\\n* 1 : global\\n* 1 : semi-global"
    min_purge: "Purge minimizer database from output batch."
    keep_seq: "Do not purge non-representative sequences from output batches."
    quiet: "Supress progress bar."
    outdir: "Output directory."
    index: "Index of sorted reads."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
    Directory out_outdir = "${in_outdir}"
  }
}