version 1.0

task Fermi2Correct {
  input {
    Int? number_of_threads
    Int? kmer_length
    Int? min_occurrence_solid
    Int? correct_singletons_int
    File? get_solid_list
    Int? protect_qint_bases
    Int? no_more_corrections
    Boolean? drop_errorprone_reads
    Boolean? print_original_name
    String index_dot_fmd
    String? reads_dot_fq
  }
  command <<<
    fermi2 correct \
      ~{index_dot_fmd} \
      ~{reads_dot_fq} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(min_occurrence_solid) then ("-o " +  '"' + min_occurrence_solid + '"') else ""} \
      ~{if defined(correct_singletons_int) then ("-d " +  '"' + correct_singletons_int + '"') else ""} \
      ~{if defined(get_solid_list) then ("-h " +  '"' + get_solid_list + '"') else ""} \
      ~{if defined(protect_qint_bases) then ("-q " +  '"' + protect_qint_bases + '"') else ""} \
      ~{if defined(no_more_corrections) then ("-w " +  '"' + no_more_corrections + '"') else ""} \
      ~{if (drop_errorprone_reads) then "-D" else ""} \
      ~{if (print_original_name) then "-O" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "number of threads [1]"
    kmer_length: "k-mer length [17]"
    min_occurrence_solid: "min occurrence for a solid k-mer [3]"
    correct_singletons_int: "correct singletons out of INT bases [17]"
    get_solid_list: "get solid k-mer list from FILE [null]"
    protect_qint_bases: "protect Q>INT bases unless they occur once [30]"
    no_more_corrections: "no more than 4 corrections per INT-bp window [8]"
    drop_errorprone_reads: "drop error-prone reads"
    print_original_name: "print the original read name"
    index_dot_fmd: ""
    reads_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}