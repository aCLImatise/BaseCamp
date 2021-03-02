version 1.0

task TargetDB {
  input {
    Boolean? gene
    Boolean? in_file
    Boolean? list_genes
    Boolean? do_all
    Boolean? sphere_size
    Boolean? verbose
    Boolean? update
    Boolean? blast_core
    Boolean? update_config
    Boolean? create_db
  }
  command <<<
    target_DB \
      ~{if (gene) then "--gene" else ""} \
      ~{if (in_file) then "--in_file" else ""} \
      ~{if (list_genes) then "--list_genes" else ""} \
      ~{if (do_all) then "--do_all" else ""} \
      ~{if (sphere_size) then "--sphere_size" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (blast_core) then "-blastcore" else ""} \
      ~{if (update_config) then "--update_config" else ""} \
      ~{if (create_db) then "--create_db" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "enter a single gene name"
    in_file: "Name of the input file with a list of genes (.txt - 1\\ngene per line)"
    list_genes: "Enter a list of gene name separated by a \\\",\\\""
    do_all: "Use this option to create a database with all human\\ngenes (list coming from HGNC)"
    sphere_size: "enter a value for the probe size of the pocket finder\\ntool (default = 3.0)"
    verbose: "Print information"
    update: "Update record if already in database (default: No)"
    blast_core: "Enter the value of processor core to use for the blast\\nsearch (default=8)"
    update_config: "use this if you want to update the config file"
    create_db: "Use this option to create an empty targetDB database\\n"
  }
  output {
    File out_stdout = stdout()
  }
}