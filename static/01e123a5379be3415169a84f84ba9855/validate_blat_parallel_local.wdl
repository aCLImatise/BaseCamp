version 1.0

task ValidateBlatParallelLocal {
  input {
    String? num_threads
    String? similar
    String? min_contig
    String? complete_rate
    Boolean? is_local
    String parallel_blat
    String ref_dot_fa
    String query_dot_fa
  }
  command <<<
    validate_blat_parallel_local \
      ~{parallel_blat} \
      ~{ref_dot_fa} \
      ~{query_dot_fa} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(complete_rate) then ("--complete_rate " +  '"' + complete_rate + '"') else ""} \
      ~{true="--is_local" false="" is_local}
  >>>
  parameter_meta {
    num_threads: "(=8)             number of threads"
    similar: "(=0.95)              similarity"
    min_contig: "(=100)            minimum contigs"
    complete_rate: "(=0.8)         completeness"
    is_local: "local align"
    parallel_blat: ""
    ref_dot_fa: ""
    query_dot_fa: ""
  }
}