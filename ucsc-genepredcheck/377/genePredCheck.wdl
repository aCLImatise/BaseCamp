version 1.0

task GenePredCheck {
  input {
    String? db
    File? chrom_sizes
  }
  command <<<
    genePredCheck \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(chrom_sizes) then ("-chromSizes " +  '"' + chrom_sizes + '"') else ""}
  >>>
  parameter_meta {
    db: "- If specified, then this database is used to\\nget chromosome sizes, and perhaps the table to check."
    chrom_sizes: "- use chrom sizes from tab separated\\nfile (name,size) instead of from chromInfo table in specified db.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}