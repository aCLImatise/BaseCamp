version 1.0

task Csbhhsearch {
  input {
    File? binary
    Int? cpu
    File? database
    String query
  }
  command <<<
    csb_hhsearch \
      ~{query} \
      ~{if defined(binary) then ("--binary " +  '"' + binary + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""}
  >>>
  parameter_meta {
    binary: "full path to the HHsearch binary (default=hhsearch)"
    cpu: "maximum degree of parallelism (default=8)"
    database: "the subject (database) HMM file\\n"
    query: "query HMM file(s)"
  }
  output {
    File out_stdout = stdout()
  }
}