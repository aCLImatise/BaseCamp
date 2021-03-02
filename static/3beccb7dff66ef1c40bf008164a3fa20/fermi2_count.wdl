version 1.0

task Fermi2Count {
  input {
    Int? kmer_length
    Int? min_occurence
    Int? number_of_threads
    Boolean? only_print_bifurcating
    Boolean? bidirectional_counting
    String in_dot_fmd
  }
  command <<<
    fermi2 count \
      ~{in_dot_fmd} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(min_occurence) then ("-o " +  '"' + min_occurence + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (only_print_bifurcating) then "-b" else ""} \
      ~{if (bidirectional_counting) then "-2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length: "k-mer length [51]"
    min_occurence: "min occurence [1]"
    number_of_threads: "number of threads [1]"
    only_print_bifurcating: "only print bifurcating k-mers (force -2)"
    bidirectional_counting: "bidirectional counting"
    in_dot_fmd: ""
  }
  output {
    File out_stdout = stdout()
  }
}