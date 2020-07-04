version 1.0

task Pear {
  input {
    Boolean? forward_fast_q
    Boolean? reverse_fast_q
    Boolean? str_output_filename
    Boolean? max_uncalled_base
    Boolean? test_method
    Boolean? empirical_freqs
    Boolean? score_method
    Boolean? phred_base
    Boolean? memory
    Boolean? cap
    Boolean? threads
    Boolean? n_base
  }
  command <<<
    pear \
      ~{true="--forward-fastq" false="" forward_fast_q} \
      ~{true="--reverse-fastq" false="" reverse_fast_q} \
      ~{true="--output" false="" str_output_filename} \
      ~{true="--max-uncalled-base" false="" max_uncalled_base} \
      ~{true="--test-method" false="" test_method} \
      ~{true="--empirical-freqs" false="" empirical_freqs} \
      ~{true="--score-method" false="" score_method} \
      ~{true="--phred-base" false="" phred_base} \
      ~{true="--memory" false="" memory} \
      ~{true="--cap" false="" cap} \
      ~{true="--threads" false="" threads} \
      ~{true="--nbase" false="" n_base}
  >>>
  parameter_meta {
    forward_fast_q: "<str>     Forward paired-end FASTQ file."
    reverse_fast_q: "<str>     Reverse paired-end FASTQ file."
    str_output_filename: "<str>     Output filename."
    max_uncalled_base: "<float>   Specify  the maximal proportion of uncalled bases in a read. Setting this value to 0 will cause PEAR to discard all reads containing  uncalled  bases.  The other extreme setting is 1 which  causes  PEAR  to process all reads independent on the number of uncalled bases. (default: 1)"
    test_method: "<int>     Specify  the  type  of  statistical  test.  Two  options are available. (default: 1) 1: Given the minimum allowed overlap, test using the highest OES. Note that due to its discrete nature, this test usually yields  a lower p-value for the assembled read than the cut- off  (specified  by -p). For example, setting the cut-off to 0.05  using  this  test,  the  assembled reads might have an actual p-value of 0.02. 2. Use the acceptance probability (m.a.p). This test methods computes  the same probability as test method 1. However, it assumes  that  the  minimal  overlap is the observed overlap with  the  highest  OES, instead of the one specified by -v. Therefore,  this  is  not  a  valid statistical test and the 'p-value'  is  in fact the maximal probability for accepting the assembly. Nevertheless, we observed in practice that for the case the actual overlap sizes are relatively small, test 2  can  correctly  assemble  more  reads  with only slightly higher false-positive rate."
    empirical_freqs: "Disable  empirical base frequencies. (default: use empirical base frequencies)"
    score_method: "<int>     Specify the scoring method. (default: 2) 1. OES with +1 for match and -1 for mismatch. 2: Assembly score (AS). Use +1 for match and -1 for mismatch multiplied by base quality scores. 3: Ignore quality scores and use +1 for a match and -1 for a mismatch."
    phred_base: "<int>     Base PHRED quality score. (default: 33)"
    memory: "<str>     Specify  the  amount of memory to be used. The number may be followed  by  one  of  the  letters  K,  M,  or  G  denoting Kilobytes,  Megabytes and Gigabytes, respectively. Bytes are assumed in case no letter is specified."
    cap: "<int>     Specify  the upper bound for the resulting quality score. If set to zero, capping is disabled. (default: 40)"
    threads: "<int>     Number of threads to use"
    n_base: "When  merging  a  base-pair  that  consists of two non-equal bases  out  of which none is degenerate, set the merged base to N and use the highest quality score of the two bases"
  }
}