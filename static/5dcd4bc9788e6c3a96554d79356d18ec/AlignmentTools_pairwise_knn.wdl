version 1.0

task AlignmentToolsPairwiseKnn {
  input {
    String? knearest_neighbors_return
    String? mode
    Boolean? remove_ns_query
    String? out
    String? prefilter
    String? threads
    String? word_size
    String pairwise_knn
    String query_file
    String dbfile
  }
  command <<<
    AlignmentTools pairwise-knn \
      ~{pairwise_knn} \
      ~{query_file} \
      ~{dbfile} \
      ~{if defined(knearest_neighbors_return) then ("-k " +  '"' + knearest_neighbors_return + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="-n" false="" remove_ns_query} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prefilter) then ("--prefilter " +  '"' + prefilter + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""}
  >>>
  parameter_meta {
    knearest_neighbors_return: "K-nearest neighbors to return. (default = 1)"
    mode: "Alignment mode {global, glocal, local, overlap, overlap_trim} (default= glocal)"
    remove_ns_query: "Remove Ns from the query. Default is false"
    out: "Redirect output to file instead of stdout"
    prefilter: "The top p closest targets from kmer prefilter step. Set p=0 to disable the prefilter step. (default = 10)"
    threads: "#Threads to use. This process is CPU intensive. (default 1)"
    word_size: "The word size used to find closest targets during prefilter. (default 4 for protein, 8 for nucleotide)"
    pairwise_knn: ""
    query_file: ""
    dbfile: ""
  }
}