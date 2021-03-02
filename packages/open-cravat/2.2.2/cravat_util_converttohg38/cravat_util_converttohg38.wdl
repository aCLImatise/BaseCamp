version 1.0

task CravatutilConverttohg38 {
  input {
    Boolean? path_sqlite_database
    String? source_genome
    Array[String] cols
    Boolean? tables
    String? chrom_col
    String? var_5
  }
  command <<<
    cravat_util converttohg38 \
      ~{var_5} \
      ~{if (path_sqlite_database) then "--db" else ""} \
      ~{if defined(source_genome) then ("--sourcegenome " +  '"' + source_genome + '"') else ""} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""} \
      ~{if (tables) then "--tables" else ""} \
      ~{if defined(chrom_col) then ("--chromcol " +  '"' + chrom_col + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    path_sqlite_database: "[DB]             path to sqlite3 database file"
    source_genome: "genome assembly of source database"
    cols: "names of the columns to convert"
    tables: "[TABLES ...]\\ntable(s) to convert. If omitted, table name will be\\nused as chromosome name."
    chrom_col: "chromosome column. If omitted, all tables will be\\ntried to be converted.\\n"
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}