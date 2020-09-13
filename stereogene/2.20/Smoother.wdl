version 1.0

task Smoother {
  input {
    Boolean? v
    Boolean? syntax
    Int? verbose
    Boolean? s
    Int? silent
    Int? bin
    Int? clear
    Boolean? force_profile_preparation
    Float? smooth_z
    File? cfg
    File? prof_path
    File? track_path
    File? confounder
    File? log
    File? chrom
    Int? bufsize
    File? bp_type
  }
  command <<<
    Smoother \
      ~{if (v) then "-v" else ""} \
      ~{if (syntax) then "-syntax" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(silent) then ("-silent " +  '"' + silent + '"') else ""} \
      ~{if defined(bin) then ("-bin " +  '"' + bin + '"') else ""} \
      ~{if defined(clear) then ("-clear " +  '"' + clear + '"') else ""} \
      ~{if (force_profile_preparation) then "-c" else ""} \
      ~{if defined(smooth_z) then ("-smoothZ " +  '"' + smooth_z + '"') else ""} \
      ~{if defined(cfg) then ("-cfg " +  '"' + cfg + '"') else ""} \
      ~{if defined(prof_path) then ("-profPath " +  '"' + prof_path + '"') else ""} \
      ~{if defined(track_path) then ("-trackPath " +  '"' + track_path + '"') else ""} \
      ~{if defined(confounder) then ("-confounder " +  '"' + confounder + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(bufsize) then ("-BufSize " +  '"' + bufsize + '"') else ""} \
      ~{if defined(bp_type) then ("-bpType " +  '"' + bp_type + '"') else ""}
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
    smooth_z: "Z-Score for smoothed profile"
    cfg: "config file"
    prof_path: "path for binary profiles"
    track_path: "path for tracks"
    confounder: "confounder filename"
    log: "cumulative log-file"
    chrom: "chromosome file"
    bufsize: "Buffer Size"
    bp_type: "The value used as a score for BroadPeak input file"
  }
  output {
    File out_stdout = stdout()
  }
}