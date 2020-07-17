version 1.0

task ErrorCorrectionConnect {
  input {
    Boolean? str_query_file
    Boolean? str_query_b
    Boolean? str_output_connected
    Boolean? two
    Boolean? three
    Boolean? int_trim_head
    Boolean? int_trim_tail
    Boolean? int_minimal_align
    Boolean? int_mean_align
    Boolean? int_maximal_align
    Boolean? float_identity_cutoff
    Boolean? float_maximum_simularity
    Boolean? float_b_threshold
    Boolean? int_pairs_connect
    Boolean? int_maximum_allowance
    Boolean? output_connecting_quality
    Boolean? int_ascii_default
    Boolean? int_quality_start
  }
  command <<<
    ErrorCorrection connect \
      ~{true="-a" false="" str_query_file} \
      ~{true="-b" false="" str_query_b} \
      ~{true="-o" false="" str_output_connected} \
      ~{true="-2" false="" two} \
      ~{true="-3" false="" three} \
      ~{true="-r" false="" int_trim_head} \
      ~{true="-R" false="" int_trim_tail} \
      ~{true="-l" false="" int_minimal_align} \
      ~{true="-m" false="" int_mean_align} \
      ~{true="-u" false="" int_maximal_align} \
      ~{true="-c" false="" float_identity_cutoff} \
      ~{true="-d" false="" float_maximum_simularity} \
      ~{true="-B" false="" float_b_threshold} \
      ~{true="-t" false="" int_pairs_connect} \
      ~{true="-N" false="" int_maximum_allowance} \
      ~{true="-q" false="" output_connecting_quality} \
      ~{true="-x" false="" int_ascii_default} \
      ~{true="-X" false="" int_quality_start}
  >>>
  parameter_meta {
    str_query_file: "<str>   Query a file, *.fq, *.fa"
    str_query_b: "<str>   Query b file, the same as a"
    str_output_connected: "<str>   Output connected file in *.fa"
    two: "<str>   Output fail connected read1.fq"
    three: "<str>   Output fail connected read2.fq"
    int_trim_head: "<int>   Trim x bp at head before use [0]"
    int_trim_tail: "<int>   Trim x bp at tail before use [0]"
    int_minimal_align: "<int>   Minimal align length allowed [8]"
    int_mean_align: "<int>   Mean align length induced alignment (Default: No) [0]"
    int_maximal_align: "<int>   Maximal align length allowed [70]"
    float_identity_cutoff: "<float> Identity cutoff of aligned region [0.9]"
    float_maximum_simularity: "<float> Maximum simularity between best and second best result. [0.7]"
    float_b_threshold: "<float> b threshold (Maximum %/100 of qual '0' base per alignment) [0.9]"
    int_pairs_connect: "<int>   Pairs to connect (Default: All) [0]"
    int_maximum_allowance: "<int>   Maximum 'N' allowance for filtering (Default: Do not filter) [-1]"
    output_connecting_quality: "Output connecting quality [0]"
    int_ascii_default: "<int>   Quality ASCII base (Default: 33)"
    int_quality_start: "<int>   Quality start range offset (Default: 2)"
  }
}