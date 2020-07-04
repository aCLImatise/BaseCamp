version 1.0

task HpCallVariants {
  input {
    String? aln_bam
    String? ref_fa
    String? outdir
    Boolean? emit_all
    Int? min_base_qual
    String? n_cpu
    String? x_mx
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    hp_call_variants \
      ~{if defined(aln_bam) then ("--aln_bam " +  '"' + aln_bam + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--emit_all" false="" emit_all} \
      ~{if defined(min_base_qual) then ("--min_base_qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if defined(x_mx) then ("--xmx " +  '"' + x_mx + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    aln_bam: "Alignment file."
    ref_fa: "Reference fasta file."
    outdir: "Output directory (default: .)"
    emit_all: "Output calls for all sites. (default: False)"
    min_base_qual: "Minimum base quality required to consider a base for calling. (default: 15)"
    n_cpu: "Number of CPU to use"
    x_mx: "Maximum heap size for Java VM, in GB. (default: 32)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}