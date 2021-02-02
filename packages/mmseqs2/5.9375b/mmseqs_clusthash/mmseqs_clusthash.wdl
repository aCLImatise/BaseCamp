version 1.0

task MmseqsClusthash {
  input {
    Boolean? alph_size
    Boolean? min_seq_id
    File? sub_mat
    Int? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs clusthash \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (min_seq_id) then "--min-seq-id" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    alph_size: "3               alphabet size [2,21]"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seq_len: "Maximum sequence length [1,32768]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}