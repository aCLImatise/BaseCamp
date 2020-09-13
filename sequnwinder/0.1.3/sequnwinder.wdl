version 1.0

task Sequnwinder {
  input {
    File? out
    Int? threads
    Boolean? debug
    File? meme_path
    File? geninfo
    Boolean? genre_gs
    Int? win
    Boolean? maker_and_regs
    Int? mink
    Int? max_k
    Int? regularization_constant_default
    Int? number_folds_cross
    Boolean? merge_low
    Int? mins_can_len
    Int? max_scan_len
    Float? hills_thresh
    Int? meme_min_w
    Int? meme_max_w
    Int? me_men_motifs
    String? meme_args
    Int? meme_search_win
    Int? motif_min_roc
    String and
    String or
  }
  command <<<
    sequnwinder \
      ~{and} \
      ~{or} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(meme_path) then ("--memepath " +  '"' + meme_path + '"') else ""} \
      ~{if defined(geninfo) then ("--geninfo " +  '"' + geninfo + '"') else ""} \
      ~{if (genre_gs) then "--genregs" else ""} \
      ~{if defined(win) then ("--win " +  '"' + win + '"') else ""} \
      ~{if (maker_and_regs) then "--makerandregs" else ""} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(regularization_constant_default) then ("--r " +  '"' + regularization_constant_default + '"') else ""} \
      ~{if defined(number_folds_cross) then ("--x " +  '"' + number_folds_cross + '"') else ""} \
      ~{if (merge_low) then "--mergelow" else ""} \
      ~{if defined(mins_can_len) then ("--minscanlen " +  '"' + mins_can_len + '"') else ""} \
      ~{if defined(max_scan_len) then ("--maxscanlen " +  '"' + max_scan_len + '"') else ""} \
      ~{if defined(hills_thresh) then ("--hillsthresh " +  '"' + hills_thresh + '"') else ""} \
      ~{if defined(meme_min_w) then ("--mememinw " +  '"' + meme_min_w + '"') else ""} \
      ~{if defined(meme_max_w) then ("--mememaxw " +  '"' + meme_max_w + '"') else ""} \
      ~{if defined(me_men_motifs) then ("--memenmotifs " +  '"' + me_men_motifs + '"') else ""} \
      ~{if defined(meme_args) then ("--memeargs " +  '"' + meme_args + '"') else ""} \
      ~{if defined(meme_search_win) then ("--memesearchwin " +  '"' + meme_search_win + '"') else ""} \
      ~{if defined(motif_min_roc) then ("--motifminROC " +  '"' + motif_min_roc + '"') else ""}
  >>>
  parameter_meta {
    out: ": Ouput file prefix. All output will be put into a directory with the prefix name"
    threads: ": Use n threads to train SeqUnwinder model. Default is 5 threads"
    debug: ": Flag to run in debug mode; prints extra output"
    meme_path: ": path to the meme bin dir (default: meme is in $PATH)"
    geninfo: "This file should list the lengths of all chromosomes on separate lines using the format chrName<tab>chrLength"
    genre_gs: "<List of TF binding sites with annotations; eg: chr1:151736000  Shared;Proximal>"
    win: ": Size of the genomic regions in bp. Default = 150."
    maker_and_regs: ": Flag to make random genomic regions as an extra outgroup class in classification (Only applicable when genome is provide.)"
    mink: ": Minimum length of k-mer (default = 4)"
    max_k: ": Maximum length of k-mer (default = 5)"
    regularization_constant_default: ": Regularization constant (default = 10)"
    number_folds_cross: ": Number of folds for cross validation, default = 3."
    merge_low: ": Flag to merge subclasses with less than 200 sites with other relevant classes. By default, all subclasses with less that 200 sites are removed."
    mins_can_len: ": Minimum length of the window to scan K-mer models. Default=8."
    max_scan_len: ": Maximum length of the window to scan K-mer models. Default=14."
    hills_thresh: ": Scoring threshold to identify hills. Default=0.1."
    meme_min_w: ": minw arg for MEME. Default=6."
    meme_max_w: ": maxw arg for MEME. Default=13. This value should always be less than \\\"maxscanlen\\\"."
    me_men_motifs: ": Number of motifs MEME should find in each condition (default=3)"
    meme_args: ": Additional args for MEME (default:  -dna -mod zoops -revcomp -nostatus)"
    meme_search_win: ": Window around hills to search for discriminative motifs. Default=16. (Only applicable when run with \\\"genregs\\\")."
    motif_min_roc: ": minimum class-specific ROC required to report motif. Default=0.7.        --a <int>: Maximum number of allowed ADMM iterations. Default=400."
    and: "--seq <path>: A directory containing fasta format files corresponding to every named chromosome is required"
    or: "--genseqs <DNA sequences around at TF binding sites; eg: ATGC...TGC     Shared;Proximal>"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}