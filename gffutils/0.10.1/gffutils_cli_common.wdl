version 1.0

task GffutilsCliCommon {
  input {
    String db
  }
  command <<<
    gffutils-cli common \
      ~{db}
  >>>
  parameter_meta {
    db: "Database to use. If a GFF or GTF file is provided instead for this argument, a database will be created for you. This can take some time (several minutes), so it's best to create one ahead of time."
  }
}