version 1.0

task FermiContrast {
  input {
    Int? minimum_occurrence
    Int? number_of_threads
    Int? kmer_length
    Int idx_one_dot_fmd
    Int idx_one_dot_rank
    Int one_two_dot_sub
    Int idx_two_dot_fmd
    Int idx_two_dot_rank
    Int two_one_dot_sub
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
  output {
    File out_stdout = stdout()
  }
}