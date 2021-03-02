version 1.0

task MetagenomicspyKrona {
  input {
    Int? query_column
    Int? taxid_column
    String? score_column
    Boolean? no_hits
    Boolean? no_rank
    String? loglevel
    String in_tsv
    String db
    String out_html
  }
  command <<<
    metagenomics_py krona \
      ~{in_tsv} \
      ~{db} \
      ~{out_html} \
      ~{if defined(query_column) then ("--queryColumn " +  '"' + query_column + '"') else ""} \
      ~{if defined(taxid_column) then ("--taxidColumn " +  '"' + taxid_column + '"') else ""} \
      ~{if defined(score_column) then ("--scoreColumn " +  '"' + score_column + '"') else ""} \
      ~{if (no_hits) then "--noHits" else ""} \
      ~{if (no_rank) then "--noRank" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_column: "Column of query id. (default 2)"
    taxid_column: "Column of taxonomy id. (default 3)"
    score_column: "Column of score. (default None)"
    no_hits: "Include wedge for no hits."
    no_rank: "Include no rank assignments."
    loglevel: "Verboseness of output. [default: DEBUG]"
    in_tsv: "Input tab delimited file."
    db: "Krona taxonomy database directory."
    out_html: "Output html report."
  }
  output {
    File out_stdout = stdout()
  }
}