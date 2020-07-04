version 1.0

task MmseqsProfile2pssm {
  input {
    Boolean? comp_bias_corr
    Boolean? db_output
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs profile2pssm \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--db-output" false="" db_output} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    db_output: "false           Output a result db instead of a text file                   "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}