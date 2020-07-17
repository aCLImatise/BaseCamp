version 1.0

task FermiContrast {
  input {
    Int? minimum_occurrence
    Int? number_of_threads
    Int? kmer_length
    String idx_one_dot_fmd
    String idx_one_dot_rank
    String one_two_dot_sub
    String idx_two_dot_fmd
    String idx_two_dot_rank
    String two_one_dot_sub
  }
  command <<<
    fermi contrast \
      ~{idx_one_dot_fmd} \
      ~{idx_one_dot_rank} \
      ~{one_two_dot_sub} \
      ~{idx_two_dot_fmd} \
      ~{idx_two_dot_rank} \
      ~{two_one_dot_sub} \
      ~{if defined(minimum_occurrence) then ("-o " +  '"' + minimum_occurrence + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""}
  >>>
  parameter_meta {
    minimum_occurrence: "minimum occurrence [3]"
    number_of_threads: "number of threads [1]"
    kmer_length: "k-mer length [55]"
    idx_one_dot_fmd: ""
    idx_one_dot_rank: ""
    one_two_dot_sub: ""
    idx_two_dot_fmd: ""
    idx_two_dot_rank: ""
    two_one_dot_sub: ""
  }
}