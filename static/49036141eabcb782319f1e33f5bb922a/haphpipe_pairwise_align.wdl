version 1.0

task HaphpipePairwiseAlign {
  input {
    String? amplicons_fa
    String? ref_fa
    String? ref_gtf
    String? outdir
    Boolean? keep_tmp
    Boolean? quiet
    String? log_file
    Boolean? debug
  }
  command <<<
    haphpipe pairwise_align \
      ~{if defined(amplicons_fa) then ("--amplicons_fa " +  '"' + amplicons_fa + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(ref_gtf) then ("--ref_gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--keep_tmp" false="" keep_tmp} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    amplicons_fa: "Assembled amplicons (fasta)"
    ref_fa: "Reference fasta file"
    ref_gtf: "GTF format file containing amplicon regions. Primary and alternate coding regions should be provided in the attribute field (for amino acid alignment)."
    outdir: "Output directory (default: .)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
}