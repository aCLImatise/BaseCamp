version 1.0

task LofreqUniq {
  input {
    File? vcf_in
    File? vcf_out
    Boolean? uni_freq
    Int? uniq_thresh
    String? uniq_mtc
    Float? uniq_alpha
    Int? uniq_n_tests
    Boolean? output_all
    Boolean? use_det_lim
    Boolean? use_orphan
    Boolean? verbose
    Boolean? debug
    String indexed_in_dot_bam
  }
  command <<<
    lofreq uniq \
      ~{indexed_in_dot_bam} \
      ~{if defined(vcf_in) then ("--vcf-in " +  '"' + vcf_in + '"') else ""} \
      ~{if defined(vcf_out) then ("--vcf-out " +  '"' + vcf_out + '"') else ""} \
      ~{if (uni_freq) then "--uni-freq" else ""} \
      ~{if defined(uniq_thresh) then ("--uniq-thresh " +  '"' + uniq_thresh + '"') else ""} \
      ~{if defined(uniq_mtc) then ("--uniq-mtc " +  '"' + uniq_mtc + '"') else ""} \
      ~{if defined(uniq_alpha) then ("--uniq-alpha " +  '"' + uniq_alpha + '"') else ""} \
      ~{if defined(uniq_n_tests) then ("--uniq-ntests " +  '"' + uniq_n_tests + '"') else ""} \
      ~{if (output_all) then "--output-all" else ""} \
      ~{if (use_det_lim) then "--use-det-lim" else ""} \
      ~{if (use_orphan) then "--use-orphan" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_in: "Input vcf file listing variants [- = stdin; gzip supported]"
    vcf_out: "Output vcf file [- = stdout; gzip supported]"
    uni_freq: "Assume variants have uniform test frequency of this value (unused if <=0) [-1.000000]"
    uniq_thresh: "Minimum uniq phred-value required. Conflicts with -m. 0 for off (default=0)"
    uniq_mtc: "Uniq multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. (default=MTC_FDR)"
    uniq_alpha: "Uniq Multiple testing correction p-value threshold (default=0.001000)"
    uniq_n_tests: "Uniq multiple testing correction p-value threshold (default=#vars)"
    output_all: "Report all variants instead of only the ones, marked unique.\\nNote, that variants already filtered in input will not be printed."
    use_det_lim: "Report variants if they are above implied detection limit\\nDefault is to use binomial test to check for frequency differences"
    use_orphan: "Don't ignore anomalous read pairs / orphan reads"
    verbose: "Be verbose"
    debug: "Enable debugging"
    indexed_in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_vcf_out = "${in_vcf_out}"
  }
}