version 1.0

task TransposonDbM2fmtToGff3pl {
  command <<<
    transposon_db_m2fmt_to_gff3_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}