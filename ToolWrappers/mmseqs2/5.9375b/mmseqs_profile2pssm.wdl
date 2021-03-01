version 1.0

task MmseqsProfile2pssm {
  input {
    Boolean? comp_bias_corr
    File? db_output
    File? sub_mat
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs profile2pssm \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (db_output) then "--db-output" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (max_seq_len) then "--max-seq-len" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    db_output: "false           Output a result db instead of a text file"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_db_output = "${in_db_output}"
    File out_sub_mat = "${in_sub_mat}"
  }
}