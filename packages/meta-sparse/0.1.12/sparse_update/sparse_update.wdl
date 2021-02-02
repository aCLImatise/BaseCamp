version 1.0

task SparseUpdate {
  input {
    String? dbname
    String? seq_list
  }
  command <<<
    sparse update \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(seq_list) then ("--seqlist " +  '"' + seq_list + '"') else ""}
  >>>
  parameter_meta {
    dbname: "Name for the database. REQUIRED."
    seq_list: "A tab-delimited list of references. Needs to be in the same format as the output of \\\"SPARSE query\\\". REQUIRED.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}