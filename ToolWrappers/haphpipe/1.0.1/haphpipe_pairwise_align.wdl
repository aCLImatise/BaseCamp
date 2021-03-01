version 1.0

task HaphpipePairwiseAlign {
  input {
    String? amplicons_fa
    File? ref_fa
    File? ref_gtf
    Directory? outdir
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
    Boolean? debug
  }
  command <<<
    haphpipe pairwise_align \
      ~{if defined(amplicons_fa) then ("--amplicons_fa " +  '"' + amplicons_fa + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(ref_gtf) then ("--ref_gtf " +  '"' + ref_gtf + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    amplicons_fa: "Assembled amplicons (fasta)"
    ref_fa: "Reference fasta file"
    ref_gtf: "GTF format file containing amplicon regions. Primary\\nand alternate coding regions should be provided in the\\nattribute field (for amino acid alignment)."
    outdir: "Output directory (default: .)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Append console output to this file"
    debug: "Print commands but do not run (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}