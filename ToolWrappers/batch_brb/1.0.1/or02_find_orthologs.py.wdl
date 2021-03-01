version 1.0

task Or02FindOrthologspy {
  input {
    Int? sql_db
    String? blast_db
    String r_blast_file
    String f_blast_file
    String outfile
    String hit_num
    String coverage
  }
  command <<<
    or02_find_orthologs_py \
      ~{r_blast_file} \
      ~{f_blast_file} \
      ~{outfile} \
      ~{hit_num} \
      ~{coverage} \
      ~{if defined(sql_db) then ("-sqldb " +  '"' + sql_db + '"') else ""} \
      ~{if defined(blast_db) then ("-blastdb " +  '"' + blast_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    sql_db: "name of SQLite3 database"
    blast_db: "name of first BLAST database if alias database was used"
    r_blast_file: "Input BLAST file with the following columns: qseqid sseqid\\npident length mismatch gapopen qstart qend sstart send\\nevalue bitscore gaps"
    f_blast_file: "Filtered First BLAST file with the following columns:\\nqseqid sseqid pident length mismatch gapopen qstart qend\\nsstart send evalue bitscore gaps document"
    outfile: "Name of output"
    hit_num: "Integer, Number of hits to include"
    coverage: "Integer, Coverage of alignment (percentage)"
  }
  output {
    File out_stdout = stdout()
  }
}