version 1.0

task Mimeomap {
  input {
    Directory? a_dir
    Directory? b_dir
    String? a_fast_a
    String? b_fast_a
    Boolean? recycle
    Directory? outdir
    File? gff_out
    Boolean? verbose
    String? label
    String? prefix
    Boolean? keep_temp
    File? lz_path
    String? mini_dt
    Int? min_len
    Int? hsp_thresh
    File? trf_path
    String? t_match
    String? t_mismatch
    String? t_delta
    String? tpm
    String? tpi
    String? tm_in_score
    Int? tmax_period
    Int? max_tandem
    Boolean? write_trf
    String output_dot
  }
  command <<<
    mimeo_map \
      ~{output_dot} \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(a_fast_a) then ("--afasta " +  '"' + a_fast_a + '"') else ""} \
      ~{if defined(b_fast_a) then ("--bfasta " +  '"' + b_fast_a + '"') else ""} \
      ~{if (recycle) then "--recycle" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(gff_out) then ("--gffout " +  '"' + gff_out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if defined(lz_path) then ("--lzpath " +  '"' + lz_path + '"') else ""} \
      ~{if defined(mini_dt) then ("--minIdt " +  '"' + mini_dt + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(hsp_thresh) then ("--hspthresh " +  '"' + hsp_thresh + '"') else ""} \
      ~{if defined(trf_path) then ("--TRFpath " +  '"' + trf_path + '"') else ""} \
      ~{if defined(t_match) then ("--tmatch " +  '"' + t_match + '"') else ""} \
      ~{if defined(t_mismatch) then ("--tmismatch " +  '"' + t_mismatch + '"') else ""} \
      ~{if defined(t_delta) then ("--tdelta " +  '"' + t_delta + '"') else ""} \
      ~{if defined(tpm) then ("--tPM " +  '"' + tpm + '"') else ""} \
      ~{if defined(tpi) then ("--tPI " +  '"' + tpi + '"') else ""} \
      ~{if defined(tm_in_score) then ("--tminscore " +  '"' + tm_in_score + '"') else ""} \
      ~{if defined(tmax_period) then ("--tmaxperiod " +  '"' + tmax_period + '"') else ""} \
      ~{if defined(max_tandem) then ("--maxtandem " +  '"' + max_tandem + '"') else ""} \
      ~{if (write_trf) then "--writeTRF" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_dir: "Name of directory containing sequences from A genome."
    b_dir: "Name of directory containing sequences from B genome."
    a_fast_a: "A genome as multifasta."
    b_fast_a: "B genome as multifasta."
    recycle: "Use existing alignment \\\"--outfile\\\" if found."
    outdir: "Write output files to this directory. (Default: cwd)"
    gff_out: "Name of GFF3 annotation file. If not set, suppress"
    verbose: "If set report LASTZ progress."
    label: "Set annotation TYPE field in gff."
    prefix: "ID prefix for B-genome hits annotated in A-genome."
    keep_temp: "If set do not remove temp files."
    lz_path: "Custom path to LASTZ executable if not in $PATH."
    mini_dt: "Minimum alignment identity to report."
    min_len: "Minimum alignment length to report."
    hsp_thresh: "Set HSP min score threshold for LASTZ."
    trf_path: "Custom path to TRF executable if not in $PATH."
    t_match: "TRF matching weight"
    t_mismatch: "TRF mismatching penalty"
    t_delta: "TRF indel penalty"
    tpm: "TRF match probability"
    tpi: "TRF indel probability"
    tm_in_score: "TRF minimum alignment score to report"
    tmax_period: "TRF maximum period size to report"
    max_tandem: "Max percentage of an A-genome alignment which may be\\nmasked by TRF. If exceeded, alignment will be\\ndiscarded."
    write_trf: "If set write TRF filtered alignment file for use with\\nother mimeo modules.\\n"
    output_dot: "--outfile OUTFILE     Name of alignment result file."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}