version 1.0

task FilterContigs {
  input {
    String? min_contig
    String fq_two_fa
    String tmp_dot_fq
    String tmp_dot_fa
  }
  command <<<
    filter_contigs \
      ~{fq_two_fa} \
      ~{tmp_dot_fq} \
      ~{tmp_dot_fa} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""}
  >>>
  parameter_meta {
    min_contig: "(=100)            filter out reads containing 'N'"
    fq_two_fa: ""
    tmp_dot_fq: ""
    tmp_dot_fa: ""
  }
}