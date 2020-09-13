version 1.0

task TangoBuild {
  input {
    File? dbfile
    Int? cpus
  }
  command <<<
    tango build \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    dbfile: "Name of diamond database file. Defaults to\\ndiamond.dmnd in same directory as the protein fasta\\nfile"
    cpus: "Number of cpus to use when building (defaults to 1)"
  }
  output {
    File out_stdout = stdout()
  }
}