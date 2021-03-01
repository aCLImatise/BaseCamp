version 1.0

task BwaPemerge {
  input {
    Boolean? output_merged_reads
    Boolean? output_unmerged_reads
    Int? number_of_threads
    Int? minimum_end_overlap
    Int? max_sum_errors
    Boolean? mu
    Int read_one_dot_fq
    Int? read_two_dot_fq
  }
  command <<<
    bwa pemerge \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{if (output_merged_reads) then "-m" else ""} \
      ~{if (output_unmerged_reads) then "-u" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minimum_end_overlap) then ("-T " +  '"' + minimum_end_overlap + '"') else ""} \
      ~{if defined(max_sum_errors) then ("-Q " +  '"' + max_sum_errors + '"') else ""} \
      ~{if (mu) then "-mu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_merged_reads: "output merged reads only"
    output_unmerged_reads: "output unmerged reads only"
    number_of_threads: "number of threads [1]"
    minimum_end_overlap: "minimum end overlap [10]"
    max_sum_errors: "max sum of errors [70]"
    mu: ""
    read_one_dot_fq: ""
    read_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}