version 1.0

task CobsQuery {
  input {
    Boolean? query_fasta_file
    Boolean? index
    Boolean? limit
    Boolean? load_complete
    Boolean? threads
    Boolean? threshold
    String query
  }
  command <<<
    cobs query \
      ~{query} \
      ~{if (query_fasta_file) then "--file" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (limit) then "--limit" else ""} \
      ~{if (load_complete) then "--load-complete" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (threshold) then "--threshold" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0"
  }
  parameter_meta {
    query_fasta_file: "query (fasta) file to process"
    index: "path to index file(s)"
    limit: "number of results to return, default: all"
    load_complete: "load complete index into RAM for batch queries"
    threads: "number of threads to use, default: max cores"
    threshold: "threshold in percentage of terms in query matching,\\ndefault: 0.8\\n"
    query: "the text sequence to search for"
  }
  output {
    File out_stdout = stdout()
  }
}