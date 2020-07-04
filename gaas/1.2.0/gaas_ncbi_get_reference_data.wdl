version 1.0

task GaasNcbiGetReferenceData.pl {
  input {
    String? list
    Boolean? organisms
    String? dbs
    String? format
    String? outfile
  }
  command <<<
    gaas_ncbi_get_reference_data.pl \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{true="--organisms" false="" organisms} \
      ~{if defined(dbs) then ("--dbs " +  '"' + dbs + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    list: "List of all available databases"
    organisms: "The names of the species to query data from. Species name format: Genus_species (e.g. Gallus_gallus). When querying several organisms please follow this nomenclature: species1:species2:species3"
    dbs: "The names of the NCBI databases to query for data. Default: nucest, protein (see --list for options). When querying several databases please follow this nomenclature: db1:db2:db3"
    format: "The file format to produce. Not all databases can write all formats! Default: fasta"
    outfile: "The name of the output file. By default the output is the standard output"
  }
}