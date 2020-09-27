version 1.0

task KtClassifyBLAST {
  input {
    String blast_output
    String e_value_dot
    String databases_dot
    String query_id
    String taxid
    String score
    String count
  }
  command <<<
    ktClassifyBLAST \
      ~{blast_output} \
      ~{e_value_dot} \
      ~{databases_dot} \
      ~{query_id} \
      ~{taxid} \
      ~{score} \
      ~{count}
  >>>
  parameter_meta {
    blast_output: "File containing BLAST results in tabular format (\\\"Hit table\\n(text)\\\" when downloading from NCBI). If running BLAST locally,\\nsubject IDs in the local database must contain accession\\nnumbers, either bare or in the fourth field of the\\npipe-separated (\\\"gi|12345|xx|ABC123.1|\\\") format.\\n_________"
    e_value_dot: "[-b]           Use bit score for average scores instead of log[10] e-value."
    databases_dot: "________"
    query_id: "The query ID as it appears in the BLAST results."
    taxid: "The NCBI taxonomy ID the query was assigned to (or -1 if it has no\\nhits)."
    score: "The score of the assignment(s); by default, the average E-value of\\n\\\"best\\\" hits (see -p, -b)."
    count: "The number of assignments."
  }
  output {
    File out_stdout = stdout()
  }
}