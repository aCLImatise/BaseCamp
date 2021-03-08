version 1.0

task TbprofilerCreateDb {
  input {
    File? prefix
    String? csv
    File? watchlist
    String? seqname
    String? confidence
    Boolean? custom
    File? db_name
    File? db_commit
    File? db_author
    File? db_date
  }
  command <<<
    tb_profiler create_db \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(watchlist) then ("--watchlist " +  '"' + watchlist + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(confidence) then ("--confidence " +  '"' + confidence + '"') else ""} \
      ~{if (custom) then "--custom" else ""} \
      ~{if defined(db_name) then ("--db-name " +  '"' + db_name + '"') else ""} \
      ~{if defined(db_commit) then ("--db-commit " +  '"' + db_commit + '"') else ""} \
      ~{if defined(db_author) then ("--db-author " +  '"' + db_author + '"') else ""} \
      ~{if defined(db_date) then ("--db-date " +  '"' + db_date + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0"
  }
  parameter_meta {
    prefix: "The input CSV file containing the mutations (default:\\ntbdb)"
    csv: "The prefix for all output files (default: tbdb.csv)"
    watchlist: "A csv file containing genes to profile but without any\\nspecific associated mutations (default:\\ntbdb.watchlist.csv)"
    seqname: "The prefix for all output files (default: Chromosome)"
    confidence: "A CSV containing gene, mutation, drug and confidence\\ncolumns (default: tbdb.confidence.csv)"
    custom: "Tells the script this is a custom database, this is\\nused to alter the generation of the version file\\n(default: False)"
    db_name: "Overrides the name of the database in the version file\\n(default: None)"
    db_commit: "Overrides the commit string of the database in the\\nversion file (default: None)"
    db_author: "Overrides the author of the database in the version\\nfile (default: None)"
    db_date: "Overrides the date of the database in the version file\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}