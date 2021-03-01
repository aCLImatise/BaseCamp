version 1.0

task Mimeox {
  input {
    Directory? a_dir
    Directory? b_dir
    String? a_fast_a
    String? b_fast_a
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
    String a_genome_dot
  }
  command <<<
    mimeo_x \
      ~{a_genome_dot} \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(a_fast_a) then ("--afasta " +  '"' + a_fast_a + '"') else ""} \
      ~{if defined(b_fast_a) then ("--bfasta " +  '"' + b_fast_a + '"') else ""} \
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
      ~{if defined(min_cov) then ("--minCov " +  '"' + min_cov + '"') else ""}
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
    min_cov: "Minimum depth of B-genome hits to report feature in"
    a_genome_dot: "--hspthresh HSPTHRESH"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}