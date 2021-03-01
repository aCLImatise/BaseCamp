version 1.0

task GrootGet {
  input {
    String? database
    Int? identity
    Directory? out
    Directory? index_dir
    File? log
    Int? processors
    Boolean? profiling
  }
  command <<<
    groot get \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (profiling) then "--profiling" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: "database to download (please choose: arg-annot/resfinder/card/groot-db/groot-core-db) (default \\\"arg-annot\\\")"
    identity: "the sequence identity used to cluster the database (only 90 available atm) (default \\\"90\\\")"
    out: "directory to save the database to (default \\\".\\\")"
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \\\"groot.log\\\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
  }
  output {
    File out_stdout = stdout()
  }
}