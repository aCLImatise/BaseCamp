version 1.0

task SparseMapDB {
  input {
    Directory? dbname
    String? map_db
    String? seq_list
    Int? n_thread
    Boolean? malt
    Boolean? append
  }
  command <<<
    sparse mapDB \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(map_db) then ("--mapDB " +  '"' + map_db + '"') else ""} \
      ~{if defined(seq_list) then ("--seqlist " +  '"' + seq_list + '"') else ""} \
      ~{if defined(n_thread) then ("--n_thread " +  '"' + n_thread + '"') else ""} \
      ~{if (malt) then "--malt" else ""} \
      ~{if (append) then "--append" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbname: "Name for the database folder. REQUIRED."
    map_db: "Name for the sub-database. REQUIRED."
    seq_list: "A tab-delimited list of reference to include. It can be generated by \\\"SPARSE.py query\\\". REQUIRED."
    n_thread: "Number of threads to use. Default: 20"
    malt: "Use MALT instead of minimap2 [default]"
    append: "Append to existing database instead of overwrite [default]"
  }
  output {
    File out_stdout = stdout()
  }
}