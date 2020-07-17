version 1.0

task SentieonBwaPemerge {
  input {
    Boolean? output_merged_reads
    Boolean? output_unmerged_reads
    Int? number_of_threads
    Int? minimum_end_overlap
    Int? max_sum_errors
    Boolean? mu
    String bwa
    String p_emerge
    String read_one_dot_fq
    String? read_two_dot_fq
  }
  command <<<
    sentieon-bwa pemerge \
      ~{bwa} \
      ~{p_emerge} \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{true="-m" false="" output_merged_reads} \
      ~{true="-u" false="" output_unmerged_reads} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minimum_end_overlap) then ("-T " +  '"' + minimum_end_overlap + '"') else ""} \
      ~{if defined(max_sum_errors) then ("-Q " +  '"' + max_sum_errors + '"') else ""} \
      ~{true="-mu" false="" mu}
  >>>
  parameter_meta {
    output_merged_reads: "output merged reads only"
    output_unmerged_reads: "output unmerged reads only"
    number_of_threads: "number of threads [1]"
    minimum_end_overlap: "minimum end overlap [10]"
    max_sum_errors: "max sum of errors [70]"
    mu: ""
    bwa: ""
    p_emerge: ""
    read_one_dot_fq: ""
    read_two_dot_fq: ""
  }
}