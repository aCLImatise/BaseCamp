version 1.0

task HpVcfToConsensus {
  input {
    File? vcf
    Directory? outdir
    Int? samp_idx
    Int? min_dp
    Float? major
    Float? minor
    Boolean? keep_tmp
    Boolean? quiet
    File? log_file
  }
  command <<<
    hp_vcf_to_consensus \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(samp_idx) then ("--sampidx " +  '"' + samp_idx + '"') else ""} \
      ~{if defined(min_dp) then ("--min_dp " +  '"' + min_dp + '"') else ""} \
      ~{if defined(major) then ("--major " +  '"' + major + '"') else ""} \
      ~{if defined(minor) then ("--minor " +  '"' + minor + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    vcf: "VCF file (created with all sites)."
    outdir: "Output directory (default: .)"
    samp_idx: "Index for sample if multi-sample VCF (default: 0)"
    min_dp: "Minimum depth to call site (default: 5)"
    major: "Allele fraction to make unambiguous call (default: 0.5)"
    minor: "Allele fraction to make ambiguous call (default: 0.2)"
    keep_tmp: "Do not delete temporary directory (default: False)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Append console output to this file"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}