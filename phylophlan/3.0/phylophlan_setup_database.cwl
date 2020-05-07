class: CommandLineTool
id: phylophlan_setup_database.cwl
inputs:
- id: input
  doc: 'Specify the path to either the folder containing the marker files or the file
    of markers, in (multi-)fasta format (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: get_core_proteins
  doc: 'Specify the taxonomic label for which download the set of core proteins. The
    label must represent a species: "--get_core_proteins s__Escherichia_coli" (default:
    None)'
  type: string
  inputBinding:
    prefix: --get_core_proteins
- id: database_update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_update
- id: output
  doc: 'Specify path to the output folder where to save the database (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: db_name
  doc: 'Specify the name of the output database (default: None)'
  type: string
  inputBinding:
    prefix: --db_name
- id: input_extension
  doc: 'Specify the extension of the input file(s) specified via -i/--input (default:
    None)'
  type: string
  inputBinding:
    prefix: --input_extension
- id: db_type
  doc: 'Specify the type of the database, where "n" stands for nucleotides and "a"
    for amino acids (default: None)'
  type: string
  inputBinding:
    prefix: --db_type
- id: output_extension
  doc: 'Set the database output extension (default: None)'
  type: string
  inputBinding:
    prefix: --output_extension
- id: overwrite
  doc: 'If specified and the output file exists it will be overwritten (default: False)'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan_setup_database
