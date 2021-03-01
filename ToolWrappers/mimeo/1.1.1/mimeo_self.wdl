version 1.0

task Mimeoself {
  input {
    Directory? a_dir
    String? a_fast_a
    Boolean? recycle
    Directory? outdir
    File? gff_out
    File? outfile
    Boolean? verbose
    String? label
    String? prefix
    Boolean? keep_temp
    File? lz_path
    File? bed_tools
    String? mini_dt
    Int? min_len
    Int? min_cov
    String? intra_cov
    Boolean? strict_self
    String feature_dot
  }
  command <<<
    mimeo_self \
      ~{feature_dot} \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(a_fast_a) then ("--afasta " +  '"' + a_fast_a + '"') else ""} \
      ~{if (recycle) then "--recycle" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(gff_out) then ("--gffout " +  '"' + gff_out + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if defined(lz_path) then ("--lzpath " +  '"' + lz_path + '"') else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(mini_dt) then ("--minIdt " +  '"' + mini_dt + '"') else ""} \
      ~{if defined(min_len) then ("--minLen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--minCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(intra_cov) then ("--intraCov " +  '"' + intra_cov + '"') else ""} \
      ~{if (strict_self) then "--strictSelf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_dir: "Name of directory containing sequences from genome.\\nWrite split files here if providing genome as\\nmultifasta."
    a_fast_a: "Genome as multifasta."
    recycle: "Use existing alignment \\\"--outfile\\\" if found."
    outdir: "Write output files to this directory. (Default: cwd)"
    gff_out: "Name of GFF3 annotation file."
    outfile: "Name of alignment result file."
    verbose: "If set report LASTZ progress."
    label: "Set annotation TYPE field in gff."
    prefix: "ID prefix for internal repeats."
    keep_temp: "If set do not remove temp files."
    lz_path: "Custom path to LASTZ executable if not in $PATH."
    bed_tools: "Custom path to bedtools executable if not in $PATH."
    mini_dt: "Minimum alignment identity to report."
    min_len: "Minimum alignment length to report."
    min_cov: "Minimum depth of aligned segments to report repeat"
    intra_cov: "Minimum depth of aligned segments from same scaffold\\nto report feature. Used if \\\"--strictSelf\\\" mode is\\nselected."
    strict_self: "If set process same-scaffold alignments separately\\nwith option to use higher \\\"--intraCov\\\" threshold.\\nSometime useful to avoid false repeat calls from\\nstaggered alignments over SSRs or short tandem\\nduplication.\\n"
    feature_dot: "--hspthresh HSPTHRESH"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}