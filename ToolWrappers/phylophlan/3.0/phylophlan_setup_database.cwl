class: CommandLineTool
id: phylophlan_setup_database.cwl
inputs:
- id: in_input
  doc: "Specify the path to either the folder containing the\nmarker files or the\
    \ file of markers, in (multi-)fasta\nformat (default: None)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_get_core_proteins
  doc: "Specify the taxonomic label for which download the set\nof core proteins.\
    \ The label must represent a species:\n\"--get_core_proteins s__Escherichia_coli\"\
    \ (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --get_core_proteins
- id: in_database_update
  doc: 'Update the databases file (default: False)'
  type: boolean?
  inputBinding:
    prefix: --database_update
- id: in_output
  doc: "Specify path to the output folder where to save the\ndatabase (default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_db_name
  doc: "Specify the name of the output database (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --db_name
- id: in_input_extension
  doc: "Specify the extension of the input file(s) specified\nvia -i/--input (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --input_extension
- id: in_db_type
  doc: "Specify the type of the database, where \"n\" stands for\nnucleotides and\
    \ \"a\" for amino acids (default: None)"
  type: string?
  inputBinding:
    prefix: --db_type
- id: in_output_extension
  doc: 'Set the database output extension (default: None)'
  type: string?
  inputBinding:
    prefix: --output_extension
- id: in_overwrite
  doc: "If specified and the output file exists it will be\noverwritten (default:\
    \ False)"
  type: File?
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify path to the output folder where to save the\ndatabase (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_overwrite
  doc: "If specified and the output file exists it will be\noverwritten (default:\
    \ False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- phylophlan_setup_database
