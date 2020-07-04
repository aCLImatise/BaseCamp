version 1.0

task KtClassifyBLAST {
  input {
    String blast_output
    String query_id
    String taxid
    String score
    String count
  }
  command <<<
    ktClassifyBLAST \
      ~{blast_output} \
      ~{query_id} \
      ~{taxid} \
      ~{score} \
      ~{count}
  >>>
  parameter_meta {
    blast_output: "File containing BLAST results in tabular format (\"Hit table (text)\" when downloading from NCBI). If running BLAST locally, subject IDs in the local database must contain accession numbers, either bare or in the fourth field of the pipe-separated (\"gi|12345|xx|ABC123.1|\") format. _________"
    query_id: "The query ID as it appears in the BLAST results."
    taxid: "The NCBI taxonomy ID the query was assigned to (or -1 if it has no hits)."
    score: "The score of the assignment(s); by default, the average E-value of \"best\" hits (see -p, -b)."
    count: "The number of assignments."
  }
}