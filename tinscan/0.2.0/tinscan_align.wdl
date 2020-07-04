version 1.0

task TinscanAlign {
  input {
    String? a_dir
    String? b_dir
    String? pairs
    String? outdir
    String? outfile
    Boolean? verbose
    String? lz_path
    Int? mini_dt
    Int? min_len
    String? hsp_thresh
  }
  command <<<
    tinscan-align \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(lz_path) then ("--lzpath " +  '"' + lz_path + '"') else ""} \
      ~{if defined(mini_dt) then ("--minIdt " +  '"' + mini_dt + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(hsp_thresh) then ("--hspthresh " +  '"' + hsp_thresh + '"') else ""}
  >>>
  parameter_meta {
    a_dir: "Name of directory containing sequences from A genome."
    b_dir: "Name of directory containing sequences from B genome."
    pairs: "Optional: Tab-delimited 2-col file specifying target:query sequence pairs to be aligned"
    outdir: "Write output files to this directory. (Default: cwd)"
    outfile: "Name of alignment result file."
    verbose: "If set report LASTZ progress."
    lz_path: "Custom path to LASTZ executable if not in $PATH."
    mini_dt: "Minimum alignment identity to report."
    min_len: "Minimum alignment length to report."
    hsp_thresh: "LASTZ min HSP threshold. Increase for stricter matches."
  }
}