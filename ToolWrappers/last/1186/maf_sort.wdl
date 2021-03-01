version 1.0

task Mafsort {
  input {
    Boolean? only_print_duplicate
    Boolean? sort_nth_sequence
    String my_alignments_dot_maf
  }
  command <<<
    maf_sort \
      ~{my_alignments_dot_maf} \
      ~{if (only_print_duplicate) then "-d" else ""} \
      ~{if (sort_nth_sequence) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    only_print_duplicate: "only print duplicate alignments"
    sort_nth_sequence: "sort by the n-th sequence (default: 1)"
    my_alignments_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}