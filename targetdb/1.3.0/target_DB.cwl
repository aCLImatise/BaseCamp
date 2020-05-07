class: CommandLineTool
id: target_DB.cwl
inputs:
- id: g
  doc: ', --gene           enter a single gene name'
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: ', --in_file        Name of the input file with a list of genes (.txt - 1 gene
    per line)'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: ', --list_genes     Enter a list of gene name separated by a ","'
  type: boolean
  inputBinding:
    prefix: -l
- id: do_all
  doc: Use this option to create a database with all human genes (list coming from
    HGNC)
  type: boolean
  inputBinding:
    prefix: --do_all
- id: s
  doc: ', --sphere_size    enter a value for the probe size of the pocket finder tool
    (default = 3.0)'
  type: boolean
  inputBinding:
    prefix: -s
- id: verbose
  doc: Print information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: update
  doc: 'Update record if already in database (default: No)'
  type: boolean
  inputBinding:
    prefix: --update
- id: blast_core
  doc: ', --num_core  Enter the value of processor core to use for the blast search
    (default=8)'
  type: boolean
  inputBinding:
    prefix: -blastcore
- id: update_config
  doc: use this if you want to update the config file
  type: boolean
  inputBinding:
    prefix: --update_config
- id: create_db
  doc: Use this option to create an empty targetDB database
  type: boolean
  inputBinding:
    prefix: --create_db
outputs: []
cwlVersion: v1.1
baseCommand:
- target_DB
