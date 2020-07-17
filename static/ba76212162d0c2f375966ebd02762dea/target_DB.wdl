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
      ~{true="-g" false="" _gene_enter} \
      ~{true="-i" false="" _infile_name} \
      ~{true="-l" false="" _listgenes_enter} \
      ~{true="--do_all" false="" do_all} \
      ~{true="-s" false="" _spheresize_enter} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--update" false="" update} \
      ~{true="-blastcore" false="" blast_core} \
      ~{true="--update_config" false="" update_config} \
      ~{true="--create_db" false="" create_db}
  >>>
  parameter_meta {
    _gene_enter: ", --gene           enter a single gene name"
    _infile_name: ", --in_file        Name of the input file with a list of genes (.txt - 1 gene per line)"
    _listgenes_enter: ", --list_genes     Enter a list of gene name separated by a \",\""
    do_all: "Use this option to create a database with all human genes (list coming from HGNC)"
    _spheresize_enter: ", --sphere_size    enter a value for the probe size of the pocket finder tool (default = 3.0)"
    verbose: "Print information"
    update: "Update record if already in database (default: No)"
    blast_core: ", --num_core  Enter the value of processor core to use for the blast search (default=8)"
    update_config: "use this if you want to update the config file"
    create_db: "Use this option to create an empty targetDB database"
  }
}