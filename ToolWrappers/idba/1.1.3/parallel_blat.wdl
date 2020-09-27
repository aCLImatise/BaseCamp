version 1.0

task ParallelBlat {
  input {
    Int? num_threads
    String ref_dot_fa
    String query_dot_fa
  }
  command <<<
    parallel_blat \
      ~{ref_dot_fa} \
      ~{query_dot_fa} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "(=8)             number of threads"
    ref_dot_fa: ""
    query_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}