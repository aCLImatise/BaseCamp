version 1.0

task PearRM {
  input {
    Boolean? forward_fast_q
    Boolean? reverse_fast_q
    File? str_output_filename
    Boolean? p_value
    Boolean? min_overlap
    Boolean? max_assembly_length
    Boolean? min_assembly_length
    Boolean? min_trim_length
    Boolean? quality_threshold
    Boolean? max_uncalled_base
    Boolean? test_method
    Boolean? empirical_freqs
    Boolean? score_method
    Boolean? phred_base
    Boolean? memory
    Boolean? cap
    Boolean? threads
    Boolean? n_base
    String and
    String quality
    String consecutive
    String followed
    String bases
  }
  command <<<
    pearRM \
      ~{and} \
      ~{quality} \
      ~{consecutive} \
      ~{followed} \
      ~{bases} \
      ~{if (forward_fast_q) then "--forward-fastq" else ""} \
      ~{if (reverse_fast_q) then "--reverse-fastq" else ""} \
      ~{if (str_output_filename) then "--output" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if (min_overlap) then "--min-overlap" else ""} \
      ~{if (max_assembly_length) then "--max-assembly-length" else ""} \
      ~{if (min_assembly_length) then "--min-assembly-length" else ""} \
      ~{if (min_trim_length) then "--min-trim-length" else ""} \
      ~{if (quality_threshold) then "--quality-threshold" else ""} \
      ~{if (max_uncalled_base) then "--max-uncalled-base" else ""} \
      ~{if (test_method) then "--test-method" else ""} \
      ~{if (empirical_freqs) then "--empirical-freqs" else ""} \
      ~{if (score_method) then "--score-method" else ""} \
      ~{if (phred_base) then "--phred-base" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (cap) then "--cap" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (n_base) then "--nbase" else ""}
  >>>
  parameter_meta {
    forward_fast_q: "<str>     Forward paired-end FASTQ file."
    reverse_fast_q: "<str>     Reverse paired-end FASTQ file."
    str_output_filename: "<str>     Output filename."
    p_value: "<float>   Specify  a p-value for the statistical test. If the computed\\np-value of a possible assembly exceeds the specified p-value\\nthen  paired-end  read  will not be assembled. Valid options\\nare: 0.0001, 0.001, 0.01, 0.05 and 1.0. Setting 1.0 disables\\nthe test. (default: 0.01)"
    min_overlap: "<int>     Specify the minimum overlap size. The minimum overlap may be\\nset to 1 when the statistical test is used. However, further\\nrestricting  the  minimum overlap size to a proper value may\\nreduce false-positive assembles. (default: 10)"
    max_assembly_length: "<int>     Specify   the  maximum  possible  length  of  the  assembled"
    min_assembly_length: "<int>     Specify   the  minimum  possible  length  of  the  assembled"
    min_trim_length: "<int>     Specify  the  minimum length of reads after trimming the low\\nquality part (see option -q). (default: 1)"
    quality_threshold: "<int>     Specify  the  quality  score  threshold for trimming the low"
    max_uncalled_base: "<float>   Specify  the maximal proportion of uncalled bases in a read.\\nSetting this value to 0 will cause PEAR to discard all reads\\ncontaining  uncalled  bases.  The other extreme setting is 1\\nwhich  causes  PEAR  to process all reads independent on the\\nnumber of uncalled bases. (default: 1)"
    test_method: "<int>     Specify  the  type  of  statistical  test.  Two  options are\\navailable. (default: 1)\\n1: Given the minimum allowed overlap, test using the highest\\nOES. Note that due to its discrete nature, this test usually\\nyields  a lower p-value for the assembled read than the cut-\\noff  (specified  by -p). For example, setting the cut-off to\\n0.05  using  this  test,  the  assembled reads might have an\\nactual p-value of 0.02.\\n2. Use the acceptance probability (m.a.p). This test methods\\ncomputes  the same probability as test method 1. However, it\\nassumes  that  the  minimal  overlap is the observed overlap\\nwith  the  highest  OES, instead of the one specified by -v.\\nTherefore,  this  is  not  a  valid statistical test and the\\n'p-value'  is  in fact the maximal probability for accepting\\nthe assembly. Nevertheless, we observed in practice that for\\nthe case the actual overlap sizes are relatively small, test\\n2  can  correctly  assemble  more  reads  with only slightly\\nhigher false-positive rate."
    empirical_freqs: "Disable  empirical base frequencies. (default: use empirical\\nbase frequencies)"
    score_method: "<int>     Specify the scoring method. (default: 2)\\n1. OES with +1 for match and -1 for mismatch.\\n2: Assembly score (AS). Use +1 for match and -1 for mismatch\\nmultiplied by base quality scores.\\n3: Ignore quality scores and use +1 for a match and -1 for a\\nmismatch."
    phred_base: "<int>     Base PHRED quality score. (default: 33)"
    memory: "<str>     Specify  the  amount of memory to be used. The number may be"
    cap: "<int>     Specify  the upper bound for the resulting quality score. If\\nset to zero, capping is disabled. (default: 40)"
    threads: "<int>     Number of threads to use"
    n_base: "When  merging  a  base-pair  that  consists of two non-equal"
    and: "assembled  sequences  may be arbitrary short. (default:"
    quality: "part  of  a  read.  If  the  quality  scores of two"
    consecutive: "bases  are  strictly  less  than  the specified"
    followed: "by  one  of  the  letters  K,  M,  or  G  denoting"
    bases: "out  of which none is degenerate, set the merged base"
  }
  output {
    File out_stdout = stdout()
    File out_str_output_filename = "${in_str_output_filename}"
  }
}