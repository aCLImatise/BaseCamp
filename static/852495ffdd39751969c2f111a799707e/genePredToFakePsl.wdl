version 1.0

task GenePredToFakePsl {
  input {
    String? q_sizes
    String db
    File file_tbl
    String psl_out
    String cds_out
  }
  command <<<
    genePredToFakePsl \
      ~{db} \
      ~{file_tbl} \
      ~{psl_out} \
      ~{cds_out} \
      ~{if defined(q_sizes) then ("-qSizes " +  '"' + q_sizes + '"') else ""}
  >>>
  parameter_meta {
    q_sizes: "Read in query sizes to fixup qSize and qStarts"
    db: ""
    file_tbl: ""
    psl_out: ""
    cds_out: ""
  }
}