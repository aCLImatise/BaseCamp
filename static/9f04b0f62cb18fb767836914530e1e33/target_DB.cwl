class: CommandLineTool
id: target_DB.cwl
inputs:
- id: in__gene_enter
  doc: ', --gene           enter a single gene name'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__infile_name
  doc: ", --in_file        Name of the input file with a list of genes (.txt - 1\n\
    gene per line)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in__listgenes_enter
  doc: ', --list_genes     Enter a list of gene name separated by a ","'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_do_all
  doc: "Use this option to create a database with all human\ngenes (list coming from\
    \ HGNC)"
  type: boolean
  inputBinding:
    prefix: --do_all
- id: in__spheresize_enter
  doc: ", --sphere_size    enter a value for the probe size of the pocket finder\n\
    tool (default = 3.0)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_verbose
  doc: Print information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_update
  doc: 'Update record if already in database (default: No)'
  type: boolean
  inputBinding:
    prefix: --update
- id: in_blast_core
  doc: ", --num_core\nEnter the value of processor core to use for the blast\nsearch\
    \ (default=8)"
  type: boolean
  inputBinding:
    prefix: -blastcore
- id: in_update_config
  doc: use this if you want to update the config file
  type: boolean
  inputBinding:
    prefix: --update_config
- id: in_create_db
  doc: "Use this option to create an empty targetDB database\n"
  type: boolean
  inputBinding:
    prefix: --create_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- target_DB
