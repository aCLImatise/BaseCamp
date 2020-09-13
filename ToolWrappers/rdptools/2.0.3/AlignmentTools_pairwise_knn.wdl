version 1.0

task AlignmentToolsPairwiseknn {
  input {
    Int? knearest_neighbors_return
    String? mode
    Boolean? remove_ns_query
    File? out
    Int? prefilter
    Int? threads
    Int? word_size
    String pairwise_knn
    String options
    String query_file
    String dbfile
  }
  command <<<
    AlignmentTools pairwise_knn \
      ~{pairwise_knn} \
      ~{options} \
      ~{query_file} \
      ~{dbfile} \
      ~{if defined(knearest_neighbors_return) then ("-k " +  '"' + knearest_neighbors_return + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (remove_ns_query) then "-n" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prefilter) then ("--prefilter " +  '"' + prefilter + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""}
  >>>
  parameter_meta {
    knearest_neighbors_return: "K-nearest neighbors to return. (default = 1)"
    mode: "Alignment mode {global, glocal, local, overlap,\\noverlap_trim} (default= glocal)"
    remove_ns_query: "Remove Ns from the query. Default is false"
    out: "Redirect output to file instead of stdout"
    prefilter: "The top p closest targets from kmer prefilter\\nstep. Set p=0 to disable the prefilter step.\\n(default = 10)"
    threads: "#Threads to use. This process is CPU intensive.\\n(default 1)"
    word_size: "The word size used to find closest targets during\\nprefilter. (default 4 for protein, 8 for\\nnucleotide)\\n"
    pairwise_knn: ""
    options: ""
    query_file: ""
    dbfile: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}