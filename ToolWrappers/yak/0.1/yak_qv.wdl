version 1.0

task YakQv {
  input {
    Int? min_sequence_length
    Float? min_kmer_fraction
    Float? false_positive_rate
    Boolean? print_qv_sequence
    Int? number_of_threads
    Int? batch_size
    String km_er_dot_hash
    String seq_dot_fa
  }
  command <<<
    yak qv \
      ~{km_er_dot_hash} \
      ~{seq_dot_fa} \
      ~{if defined(min_sequence_length) then ("-l " +  '"' + min_sequence_length + '"') else ""} \
      ~{if defined(min_kmer_fraction) then ("-f " +  '"' + min_kmer_fraction + '"') else ""} \
      ~{if defined(false_positive_rate) then ("-e " +  '"' + false_positive_rate + '"') else ""} \
      ~{if (print_qv_sequence) then "-p" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(batch_size) then ("-K " +  '"' + batch_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/yak:0.1--hed695b0_0"
  }
  parameter_meta {
    min_sequence_length: "min sequence length [0]"
    min_kmer_fraction: "min k-mer fraction [0.5]"
    false_positive_rate: "false positive rate [4e-05]"
    print_qv_sequence: "print QV for each sequence"
    number_of_threads: "number of threads [4]"
    batch_size: "batch size [1g]"
    km_er_dot_hash: ""
    seq_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}