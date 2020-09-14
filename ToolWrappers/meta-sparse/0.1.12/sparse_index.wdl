version 1.0

task SparseIndex {
  input {
    Directory? dbname
    Boolean? update
    File? seq_list
    Int? n_thread
  }
  command <<<
    sparse index \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(seq_list) then ("--seqlist " +  '"' + seq_list + '"') else ""} \
      ~{if defined(n_thread) then ("--n_thread " +  '"' + n_thread + '"') else ""}
  >>>
  parameter_meta {
    dbname: "Name for the database folder. REQUIRED."
    update: "Index the current RefSeq database. Overwrite SEQLIST."
    seq_list: "Load in a tab-delimited file generated by \\\"SPARSE.py query\\\".\\nSpecify the absolute path in column \\\"file_path\\\" if your genomes are local."
    n_thread: "Number of threads to use. Default: 20\\n"
  }
  output {
    File out_stdout = stdout()
  }
}