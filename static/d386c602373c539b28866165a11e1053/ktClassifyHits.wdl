version 1.0

task KtClassifyHits {
  input {
    String hits
    String query_id
    String taxid
    String score
    String count
  }
  command <<<
    ktClassifyHits \
      ~{hits} \
      ~{query_id} \
      ~{taxid} \
      ~{score} \
      ~{count}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hits: "Tabular file whose fields are [query, subject, score]. Subject must\\nbe an accession or contain one in the fourth field of pipe notation\\n(e.g. \\\"gi|12345|xx|ABC123.1|\\\". The subject and score can be omitted to\\ninclude a query that has no hits, which will be assigned a taxonomy ID\\nof -1.\\n_________"
    query_id: "The query ID as it appears in the input."
    taxid: "The NCBI taxonomy ID the query was assigned to (or -1 if it has no\\nhits)."
    score: "The score of the assignment(s); by default, the average E-value of\\n\\\"best\\\" hits (see -p, -b)."
    count: "The number of assignments."
  }
  output {
    File out_stdout = stdout()
  }
}