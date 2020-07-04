version 1.0

task MimeoX {
  input {
    String? a_dir
    String? b_dir
    String? a_fast_a
    String? b_fast_a
    Boolean? recycle
    String? outdir
    String? gff_out
    String? outfile
    Boolean? verbose
    String? label
    String? prefix
    Boolean? keep_temp
    String? lz_path
    String? bed_tools
    Int? mini_dt
    Int? min_len
    Int? min_cov
    String? hsp_thresh
  }
  command <<<
    mimeo-x \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(a_fast_a) then ("--afasta " +  '"' + a_fast_a + '"') else ""} \
      ~{if defined(b_fast_a) then ("--bfasta " +  '"' + b_fast_a + '"') else ""} \
      ~{true="--recycle" false="" recycle} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(gff_out) then ("--gffout " +  '"' + gff_out + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{if defined(lz_path) then ("--lzpath " +  '"' + lz_path + '"') else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(mini_dt) then ("--minIdt " +  '"' + mini_dt + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--minCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(hsp_thresh) then ("--hspthresh " +  '"' + hsp_thresh + '"') else ""}
  >>>
  parameter_meta {
    a_dir: "Name of directory containing sequences from A genome."
    b_dir: "Name of directory containing sequences from B genome."
    a_fast_a: "A genome as multifasta."
    b_fast_a: "B genome as multifasta."
    recycle: "Use existing alignment \"--outfile\" if found."
    outdir: "Write output files to this directory. (Default: cwd)"
    gff_out: "Name of GFF3 annotation file."
    outfile: "Name of alignment result file."
    verbose: "If set report LASTZ progress."
    label: "Set annotation TYPE field in gff."
    prefix: "ID prefix for B-genome repeats annotated in A-genome."
    keep_temp: "If set do not remove temp files."
    lz_path: "Custom path to LASTZ executable if not in $PATH."
    bed_tools: "Custom path to bedtools executable if not in $PATH."
    mini_dt: "Minimum alignment identity to report."
    min_len: "Minimum alignment length to report."
    min_cov: "Minimum depth of B-genome hits to report feature in A-genome."
    hsp_thresh: "Set HSP min score threshold for LASTZ."
  }
}