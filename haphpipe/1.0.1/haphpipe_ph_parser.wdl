version 1.0

task HaphpipePhParser {
  input {
    String? haplotypes_fa
    String? outdir
    String? prefix
    Boolean? keep_gaps
    Boolean? quiet
    String? log_file
  }
  command <<<
    haphpipe ph_parser \
      ~{if defined(haplotypes_fa) then ("--haplotypes_fa " +  '"' + haplotypes_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--keep_gaps" false="" keep_gaps} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    haplotypes_fa: "Haplotype file created by PredictHaplo."
    outdir: "Output directory. (default: .)"
    prefix: "Prefix to add to sequence names"
    keep_gaps: "Do not remove gaps from alignment (default: False)"
    quiet: "Do not write output to console (silence stdout and stderr) (default: False)"
    log_file: "Append console output to this file"
  }
}