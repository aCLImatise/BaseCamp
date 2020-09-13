version 1.0

task LofreqUniq {
  input {
    Boolean? _vcfin_file
    File? _vcfout_file
    Boolean? _unifreq_assume
    Boolean? _uniqthresh_int
    Boolean? _uniqmtc_string
    Boolean? _uniqalpha_float
    Boolean? _uniqntests_int
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
      ~{if (_vcfin_file) then "-v" else ""} \
      ~{if (_vcfout_file) then "-o" else ""} \
      ~{if (_unifreq_assume) then "-f" else ""} \
      ~{if (_uniqthresh_int) then "-t" else ""} \
      ~{if (_uniqmtc_string) then "-m" else ""} \
      ~{if (_uniqalpha_float) then "-a" else ""} \
      ~{if (_uniqntests_int) then "-n" else ""} \
      ~{if (output_all) then "--output-all" else ""} \
      ~{if (use_det_lim) then "--use-det-lim" else ""} \
      ~{if (use_orphan) then "--use-orphan" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    _vcfin_file: "| --vcf-in FILE      Input vcf file listing variants [- = stdin; gzip supported]"
    _vcfout_file: "| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]"
    _unifreq_assume: "| --uni-freq         Assume variants have uniform test frequency of this value (unused if <=0) [-1.000000]"
    _uniqthresh_int: "| --uniq-thresh INT  Minimum uniq phred-value required. Conflicts with -m. 0 for off (default=0)"
    _uniqmtc_string: "| --uniq-mtc STRING  Uniq multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. (default=MTC_FDR)"
    _uniqalpha_float: "| --uniq-alpha FLOAT Uniq Multiple testing correction p-value threshold (default=0.001000)"
    _uniqntests_int: "| --uniq-ntests INT  Uniq multiple testing correction p-value threshold (default=#vars)"
    output_all: "Report all variants instead of only the ones, marked unique.\\nNote, that variants already filtered in input will not be printed."
    use_det_lim: "Report variants if they are above implied detection limit\\nDefault is to use binomial test to check for frequency differences"
    use_orphan: "Don't ignore anomalous read pairs / orphan reads"
    verbose: "Be verbose"
    debug: "Enable debugging"
    indexed_in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out__vcfout_file = "${in__vcfout_file}"
  }
}