version 1.0

task PhyluceProbeGetMultiFastaTable {
  input {
    Directory? fast_as
    String? sqlite_database_create
    String? base_tax_on
  }
  command <<<
    phyluce_probe_get_multi_fasta_table \
      ~{if defined(fast_as) then ("--fastas " +  '"' + fast_as + '"') else ""} \
      ~{if defined(sqlite_database_create) then ("--output " +  '"' + sqlite_database_create + '"') else ""} \
      ~{if defined(base_tax_on) then ("--base-taxon " +  '"' + base_tax_on + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_as: "A folder of fasta files."
    sqlite_database_create: "A SQLite database to create during integration."
    base_tax_on: "The base taxon to use.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}