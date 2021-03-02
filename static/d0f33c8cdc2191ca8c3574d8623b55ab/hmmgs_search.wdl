version 1.0

task HmmgsSearch {
  input {
    Boolean? normalize_hmm_input
    Int? prune_search_improve
    String limit_in_seconds
    String bloom_filter
    String km_ers
  }
  command <<<
    hmmgs search \
      ~{limit_in_seconds} \
      ~{bloom_filter} \
      ~{km_ers} \
      ~{if (normalize_hmm_input) then "-u" else ""} \
      ~{if defined(prune_search_improve) then ("-p " +  '"' + prune_search_improve + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    normalize_hmm_input: "don't normalize the hmm input"
    prune_search_improve: "prune the search if the score does not improve after n_nodes (default 20, set to 0 to disable pruning)"
    limit_in_seconds: "dtime limit for individual searches (conservative suggestion = 100)"
    bloom_filter: "bloom filter built using hmmgs build"
    km_ers: "starting kmers (can use KmerFilter's fast_kmer_filter to identify starting kmers)"
  }
  output {
    File out_stdout = stdout()
  }
}