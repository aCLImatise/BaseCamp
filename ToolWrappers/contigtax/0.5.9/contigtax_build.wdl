version 1.0

task ContigtaxBuild {
  input {
    File? dbfile
    Int? cpus
    String fast_a_file
    String taxon_map
    String tax_on_nodes
  }
  command <<<
    contigtax build \
      ~{fast_a_file} \
      ~{taxon_map} \
      ~{tax_on_nodes} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    dbfile: "Name of diamond database file. Defaults to\\ndiamond.dmnd in same directory as the protein fasta\\nfile"
    cpus: "Number of cpus to use when building (defaults to 1)"
    fast_a_file: "Specify (reformatted) fasta file"
    taxon_map: "Protein accession to taxid mapfile (must be gzipped)"
    tax_on_nodes: "nodes.dmp file from NCBI taxonomy database"
  }
  output {
    File out_stdout = stdout()
  }
}