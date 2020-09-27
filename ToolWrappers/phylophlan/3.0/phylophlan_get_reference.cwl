class: CommandLineTool
id: phylophlan_get_reference.cwl
inputs:
- id: in_get
  doc: "Specify the taxonomic label for which download the set\nof reference genomes.\
    \ The label must represent a valid\ntaxonomic level or the special case \"all\"\
    \ (default:\nNone)"
  type: string
  inputBinding:
    prefix: --get
- id: in_list_clades
  doc: "Print for all taxa the total number of species and\nreference genomes available\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --list_clades
- id: in_database_update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_update
- id: in_output_file_extension
  doc: "Specify path to the extension of the output files\n(default: .fna.gz)"
  type: File
  inputBinding:
    prefix: --output_file_extension
- id: in_output
  doc: "Specify path to the output folder where to save the\nfiles, required when\
    \ -g/--get is specified (default:\nNone)"
  type: File
  inputBinding:
    prefix: --output
- id: in_how_many
  doc: "Specify how many reference genomes to download, where\n-1 stands for \"all\
    \ available\" (default: 4)"
  type: long
  inputBinding:
    prefix: --how_many
- id: in_genbank_mapping
  doc: "The local GenBank mapping file, if not found it will\nbe automatically downloaded\
    \ (default:\nassembly_summary_genbank.txt)"
  type: File
  inputBinding:
    prefix: --genbank_mapping
- id: in_verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_extension
  doc: "Specify path to the extension of the output files\n(default: .fna.gz)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_extension)
- id: out_output
  doc: "Specify path to the output folder where to save the\nfiles, required when\
    \ -g/--get is specified (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phylophlan_get_reference
