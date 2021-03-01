version 1.0

task ValidateBlatParallelRna {
  input {
    Int? num_threads
    Float? similar
    Int? min_contig
    Float? complete_rate
    Boolean? is_local
    String parallel_blat
    String validate_contigs_blat
    String ref_dot_fa
    String contigs_dot_fa_dot
    String query_dot_fa
  }
  command <<<
    validate_blat_parallel_rna \
      ~{parallel_blat} \
      ~{validate_contigs_blat} \
      ~{ref_dot_fa} \
      ~{contigs_dot_fa_dot} \
      ~{query_dot_fa} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(complete_rate) then ("--complete_rate " +  '"' + complete_rate + '"') else ""} \
      ~{if (is_local) then "--is_local" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_threads: "(=8)             number of threads"
    similar: "(=0.95)              similarity"
    min_contig: "(=100)            minimum contigs"
    complete_rate: "(=0.8)         completeness"
    is_local: "local align"
    parallel_blat: ""
    validate_contigs_blat: ""
    ref_dot_fa: ""
    contigs_dot_fa_dot: ""
    query_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}