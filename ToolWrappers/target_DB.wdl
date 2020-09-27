version 1.0

task TargetDB {
  input {
    Boolean? _gene_enter
    Boolean? _infile_name
    Boolean? _listgenes_enter
    Boolean? do_all
    Boolean? _spheresize_enter
    Boolean? verbose
    Boolean? update
    Boolean? blast_core
    Boolean? update_config
    Boolean? create_db
  }
  command <<<
    target_DB \
      ~{if (_gene_enter) then "-g" else ""} \
      ~{if (_infile_name) then "-i" else ""} \
      ~{if (_listgenes_enter) then "-l" else ""} \
      ~{if (do_all) then "--do_all" else ""} \
      ~{if (_spheresize_enter) then "-s" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (blast_core) then "-blastcore" else ""} \
      ~{if (update_config) then "--update_config" else ""} \
      ~{if (create_db) then "--create_db" else ""}
  >>>
  parameter_meta {
    _gene_enter: ", --gene           enter a single gene name"
    _infile_name: ", --in_file        Name of the input file with a list of genes (.txt - 1\\ngene per line)"
    _listgenes_enter: ", --list_genes     Enter a list of gene name separated by a \\\",\\\""
    do_all: "Use this option to create a database with all human\\ngenes (list coming from HGNC)"
    _spheresize_enter: ", --sphere_size    enter a value for the probe size of the pocket finder\\ntool (default = 3.0)"
    verbose: "Print information"
    update: "Update record if already in database (default: No)"
    blast_core: ", --num_core\\nEnter the value of processor core to use for the blast\\nsearch (default=8)"
    update_config: "use this if you want to update the config file"
    create_db: "Use this option to create an empty targetDB database\\n"
  }
  output {
    File out_stdout = stdout()
  }
}