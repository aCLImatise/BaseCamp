version 1.0

task President {
  input {
    String? reference
    Array[String] query
    Float? id_threshold
    Float? n_threshold
    Int? threads
    File? path
    File? prefix
    Boolean? store_alignment
  }
  command <<<
    president \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(id_threshold) then ("--id_threshold " +  '"' + id_threshold + '"') else ""} \
      ~{if defined(n_threshold) then ("--n_threshold " +  '"' + n_threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (store_alignment) then "--store_alignment" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/president:0.6.0--py_0"
  }
  parameter_meta {
    reference: "Reference genome."
    query: "Query genome(s)."
    id_threshold: "ACGT nucleotide identity threshold after alignment\\n(percentage). A query sequence is reported as valid\\nbased on this threshold (def: 0.9)"
    n_threshold: "A query sequence is reported as valid, if the\\npercentage of Ns is smaller or equal the threshold\\n(def: 0.05)"
    threads: "Number of threads to use for pblat."
    path: "Path to be used to store results and FASTA files."
    prefix: "Prefix to be used t store results in the path"
    store_alignment: "add query alignment columns (PSL format)"
  }
  output {
    File out_stdout = stdout()
  }
}