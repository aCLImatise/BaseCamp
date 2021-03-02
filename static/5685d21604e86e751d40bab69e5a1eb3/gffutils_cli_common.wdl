version 1.0

task GffutilscliCommon {
  input {
    String db
  }
  command <<<
    gffutils_cli common \
      ~{db}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Database to use. If a GFF or GTF file is provided instead for\\nthis argument, a database will be created for you. This can take\\nsome time (several minutes), so it's best to create one ahead of\\ntime."
  }
  output {
    File out_stdout = stdout()
  }
}