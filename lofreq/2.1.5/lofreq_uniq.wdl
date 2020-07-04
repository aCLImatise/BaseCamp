version 1.0

task LofreqUniq {
  input {
    Boolean? _file_file
    Boolean? _file_output
    Boolean? _unifreq_assume
    Boolean? _uniqthresh_int
    Boolean? _uniqmtc_string
    Boolean? _uniqalpha_float
    Boolean? _uniqntests_int
    String indexed_in_dot_bam
  }
  command <<<
    lofreq uniq \
      ~{indexed_in_dot_bam} \
      ~{true="-v" false="" _file_file} \
      ~{true="-o" false="" _file_output} \
      ~{true="-f" false="" _unifreq_assume} \
      ~{true="-t" false="" _uniqthresh_int} \
      ~{true="-m" false="" _uniqmtc_string} \
      ~{true="-a" false="" _uniqalpha_float} \
      ~{true="-n" false="" _uniqntests_int}
  >>>
  parameter_meta {
    _file_file: "| --vcf-in FILE      Input vcf file listing variants [- = stdin; gzip supported]"
    _file_output: "| --vcf-out FILE     Output vcf file [- = stdout; gzip supported]"
    _unifreq_assume: "| --uni-freq         Assume variants have uniform test frequency of this value (unused if <=0) [-1.000000]"
    _uniqthresh_int: "| --uniq-thresh INT  Minimum uniq phred-value required. Conflicts with -m. 0 for off (default=0)"
    _uniqmtc_string: "| --uniq-mtc STRING  Uniq multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. (default=MTC_FDR)"
    _uniqalpha_float: "| --uniq-alpha FLOAT Uniq Multiple testing correction p-value threshold (default=0.001000)"
    _uniqntests_int: "| --uniq-ntests INT  Uniq multiple testing correction p-value threshold (default=#vars) --output-all       Report all variants instead of only the ones, marked unique. Note, that variants already filtered in input will not be printed. --use-det-lim      Report variants if they are above implied detection limit Default is to use binomial test to check for frequency differences --use-orphan       Don't ignore anomalous read pairs / orphan reads --verbose          Be verbose --debug            Enable debugging"
    indexed_in_dot_bam: ""
  }
}