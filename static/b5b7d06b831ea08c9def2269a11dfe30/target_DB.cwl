class: CommandLineTool
id: target_DB.cwl
inputs:
- id: in_gene
  doc: enter a single gene name
  type: boolean?
  inputBinding:
    prefix: --gene
- id: in_in_file
  doc: "Name of the input file with a list of genes (.txt - 1\ngene per line)"
  type: boolean?
  inputBinding:
    prefix: --in_file
- id: in_list_genes
  doc: Enter a list of gene name separated by a ","
  type: boolean?
  inputBinding:
    prefix: --list_genes
- id: in_do_all
  doc: "Use this option to create a database with all human\ngenes (list coming from\
    \ HGNC)"
  type: boolean?
  inputBinding:
    prefix: --do_all
- id: in_sphere_size
  doc: "enter a value for the probe size of the pocket finder\ntool (default = 3.0)"
  type: boolean?
  inputBinding:
    prefix: --sphere_size
- id: in_verbose
  doc: Print information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_update
  doc: 'Update record if already in database (default: No)'
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_blast_core
  doc: "Enter the value of processor core to use for the blast\nsearch (default=8)"
  type: boolean?
  inputBinding:
    prefix: -blastcore
- id: in_update_config
  doc: use this if you want to update the config file
  type: boolean?
  inputBinding:
    prefix: --update_config
- id: in_create_db
  doc: "Use this option to create an empty targetDB database\n"
  type: boolean?
  inputBinding:
    prefix: --create_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- target_DB
