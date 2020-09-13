version 1.0

task Projector {
  input {
    Boolean? v
    Boolean? syntax
    Int? verbose
    Boolean? s
    Int? silent
    Int? bin
    Int? clear
    Boolean? force_profile_preparation
    File? cfg
    File? prof_path
    File? track_path
    File? res_path
    File? confounder
    File? statistics
    File? params
    File? log
    File? chrom
    Int? bufsize
    File? bp_type
    String? pc_or_profile
    Boolean? na
    Int? threshold
    Float? kernel_sigma
    Int? w_size
    Float? max_na
    Float? max_zero
    Int? n_shuffle
    Boolean? sp
    Int? out_spectr
    Int? out_chrom
    String? write_distr
    Boolean? write_r_script
    Boolean? cross_width
    Boolean? distances
    Boolean? lc
    String? lc_scale
    Float? l_fdr
    Float? r_fdr
    File? out_res
  }
  command <<<
    Projector \
      ~{if (v) then "-v" else ""} \
      ~{if (syntax) then "-syntax" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(silent) then ("-silent " +  '"' + silent + '"') else ""} \
      ~{if defined(bin) then ("-bin " +  '"' + bin + '"') else ""} \
      ~{if defined(clear) then ("-clear " +  '"' + clear + '"') else ""} \
      ~{if (force_profile_preparation) then "-c" else ""} \
      ~{if defined(cfg) then ("-cfg " +  '"' + cfg + '"') else ""} \
      ~{if defined(prof_path) then ("-profPath " +  '"' + prof_path + '"') else ""} \
      ~{if defined(track_path) then ("-trackPath " +  '"' + track_path + '"') else ""} \
      ~{if defined(res_path) then ("-resPath " +  '"' + res_path + '"') else ""} \
      ~{if defined(confounder) then ("-confounder " +  '"' + confounder + '"') else ""} \
      ~{if defined(statistics) then ("-statistics " +  '"' + statistics + '"') else ""} \
      ~{if defined(params) then ("-params " +  '"' + params + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(bufsize) then ("-BufSize " +  '"' + bufsize + '"') else ""} \
      ~{if defined(bp_type) then ("-bpType " +  '"' + bp_type + '"') else ""} \
      ~{if defined(pc_or_profile) then ("-pcorProfile " +  '"' + pc_or_profile + '"') else ""} \
      ~{if (na) then "-NA" else ""} \
      ~{if defined(threshold) then ("-threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(kernel_sigma) then ("-kernelSigma " +  '"' + kernel_sigma + '"') else ""} \
      ~{if defined(w_size) then ("-wSize " +  '"' + w_size + '"') else ""} \
      ~{if defined(max_na) then ("-maxNA " +  '"' + max_na + '"') else ""} \
      ~{if defined(max_zero) then ("-maxZero " +  '"' + max_zero + '"') else ""} \
      ~{if defined(n_shuffle) then ("-nShuffle " +  '"' + n_shuffle + '"') else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if defined(out_spectr) then ("-outSpectr " +  '"' + out_spectr + '"') else ""} \
      ~{if defined(out_chrom) then ("-outChrom " +  '"' + out_chrom + '"') else ""} \
      ~{if defined(write_distr) then ("-writeDistr " +  '"' + write_distr + '"') else ""} \
      ~{if (write_r_script) then "-r" else ""} \
      ~{if (cross_width) then "-crossWidth" else ""} \
      ~{if (distances) then "-Distances" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if defined(lc_scale) then ("-LCScale " +  '"' + lc_scale + '"') else ""} \
      ~{if defined(l_fdr) then ("-L_FDR " +  '"' + l_fdr + '"') else ""} \
      ~{if defined(r_fdr) then ("-R_FDR " +  '"' + r_fdr + '"') else ""} \
      ~{if defined(out_res) then ("-outRes " +  '"' + out_res + '"') else ""}
  >>>
  parameter_meta {
    v: "verbose"
    syntax: "strong syntax control in input files"
    verbose: "verbose"
    s: "no output to stdout"
    silent: "no output to stdout"
    bin: "bin size for input averaging"
    clear: "force binary profile preparation"
    force_profile_preparation: "force  binary profile preparation"
    cfg: "config file"
    prof_path: "path for binary profiles"
    track_path: "path for tracks"
    res_path: "path for results"
    confounder: "confounder filename"
    statistics: "cumulative file with statistics"
    params: "cumulative file with parameters"
    log: "cumulative log-file"
    chrom: "chromosome file"
    bufsize: "Buffer Size"
    bp_type: "The value used as a score for BroadPeak input file"
    pc_or_profile: "Track for partial correlation"
    na: "use NA values as unknown and fill them by noise"
    threshold: "threshold for input data for removing too small values: 0..250"
    kernel_sigma: "Kernel width"
    w_size: "Window size"
    max_na: "Max number of NA values in window (percent)"
    max_zero: "Max number of zero values in window (percent)"
    n_shuffle: "Number of shuffles for background calculation"
    sp: "the data is sparce"
    out_spectr: "write fourier spectrums"
    out_chrom: "write statistics by chromosomes"
    write_distr: "write foreground and background distributions"
    write_r_script: "write R script for the result presentation"
    cross_width: "Width of cross-correlation plot"
    distances: "Write distance correlations"
    lc: "produce profile correlation"
    lc_scale: "Local correlation scale: LOG | LIN"
    l_fdr: "threshold on left FDR when write the local correlation"
    r_fdr: "threshold on right FDR when write the local correlation"
    out_res: "format for results in statistics file"
  }
  output {
    File out_stdout = stdout()
  }
}