version 1.0

task LofreqFilter {
  input {
    File? in
    File? out
    Int? cov_min
    Int? cov_max
    Float? af_min
    Float? af_max
    Int? sb_thresh
    String? sb_mtc
    Float? sb_alpha
    Boolean? sb_no_compound
    Boolean? sb_incl_indels
    Int? snv_qual_thresh
    String? snv_qual_mtc
    Float? snv_qual_alpha
    Int? snv_qual_n_tests
    Int? in_del_qual_thresh
    String? in_del_qual_mtc
    Float? in_del_qual_alpha
    Int? in_del_qual_n_tests
    Boolean? only_indels
    Boolean? only_sn_vs
    Boolean? print_all
    Boolean? no_defaults
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    lofreq filter \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cov_min) then ("--cov-min " +  '"' + cov_min + '"') else ""} \
      ~{if defined(cov_max) then ("--cov-max " +  '"' + cov_max + '"') else ""} \
      ~{if defined(af_min) then ("--af-min " +  '"' + af_min + '"') else ""} \
      ~{if defined(af_max) then ("--af-max " +  '"' + af_max + '"') else ""} \
      ~{if defined(sb_thresh) then ("--sb-thresh " +  '"' + sb_thresh + '"') else ""} \
      ~{if defined(sb_mtc) then ("--sb-mtc " +  '"' + sb_mtc + '"') else ""} \
      ~{if defined(sb_alpha) then ("--sb-alpha " +  '"' + sb_alpha + '"') else ""} \
      ~{if (sb_no_compound) then "--sb-no-compound" else ""} \
      ~{if (sb_incl_indels) then "--sb-incl-indels" else ""} \
      ~{if defined(snv_qual_thresh) then ("--snvqual-thresh " +  '"' + snv_qual_thresh + '"') else ""} \
      ~{if defined(snv_qual_mtc) then ("--snvqual-mtc " +  '"' + snv_qual_mtc + '"') else ""} \
      ~{if defined(snv_qual_alpha) then ("--snvqual-alpha " +  '"' + snv_qual_alpha + '"') else ""} \
      ~{if defined(snv_qual_n_tests) then ("--snvqual-ntests " +  '"' + snv_qual_n_tests + '"') else ""} \
      ~{if defined(in_del_qual_thresh) then ("--indelqual-thresh " +  '"' + in_del_qual_thresh + '"') else ""} \
      ~{if defined(in_del_qual_mtc) then ("--indelqual-mtc " +  '"' + in_del_qual_mtc + '"') else ""} \
      ~{if defined(in_del_qual_alpha) then ("--indelqual-alpha " +  '"' + in_del_qual_alpha + '"') else ""} \
      ~{if defined(in_del_qual_n_tests) then ("--indelqual-ntests " +  '"' + in_del_qual_n_tests + '"') else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if (print_all) then "--print-all" else ""} \
      ~{if (no_defaults) then "--no-defaults" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "VCF input file (no streaming supported; gzip supported)"
    out: "VCF output file (default: - for stdout; gzip supported)."
    cov_min: "Minimum coverage allowed (<1=off)"
    cov_max: "Maximum coverage allowed (<1=off)"
    af_min: "Minimum allele freq allowed (<1=off)"
    af_max: "Maximum allele freq allowed (<1=off)"
    sb_thresh: "Maximum phred-value allowed. Conflicts with -b."
    sb_mtc: "Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -B"
    sb_alpha: "Multiple testing correction pvalue threshold"
    sb_no_compound: "Don't use compound filter"
    sb_incl_indels: "Apply SB filter to indels as well"
    snv_qual_thresh: "Minimum phred-value allowed. Conflicts with -q"
    snv_qual_mtc: "Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -Q"
    snv_qual_alpha: "Multiple testing correction pvalue threshold"
    snv_qual_n_tests: "Number of performed SNV tests for multiple testing correction"
    in_del_qual_thresh: "Minimum phred-value allowed. Conflicts with -q"
    in_del_qual_mtc: "Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts with -Q"
    in_del_qual_alpha: "Multiple testing correction pvalue threshold"
    in_del_qual_n_tests: "Number of performed indel tests for multiple testing correction"
    only_indels: "Keep InDels only"
    only_sn_vs: "Keep SNVs only"
    print_all: "Print all, not just passed variants"
    no_defaults: "Remove all default filter settings"
    verbose: "Be verbose"
    debug: "Enable debugging"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}