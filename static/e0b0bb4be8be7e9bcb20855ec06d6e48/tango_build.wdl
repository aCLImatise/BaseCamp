version 1.0

task TangoBuild {
  input {
    String? dbfile
    String? cpus
  }
  command <<<
    tango build \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    dbfile: "Name of diamond database file. Defaults to diamond.dmnd in same directory as the protein fasta file"
    cpus: "Number of cpus to use when building (defaults to 1)"
  }
}