class: CommandLineTool
id: phylophlan_metagenomic.cwl
inputs:
- id: in_input
  doc: "Input folder containing the metagenomic bins to be\nindexed (default: None)"
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output_prefix
  doc: "Prefix used for the output folders: indexed bins,\ndistance estimations. If\
    \ not specified, the input\nfolder will be used (default: None)"
  type: Directory
  inputBinding:
    prefix: --output_prefix
- id: in_database
  doc: "Database name, available options can be listed using\nthe --database_list\
    \ parameter (default: None)"
  type: string
  inputBinding:
    prefix: --database
- id: in_database_list
  doc: "List of all the available databases that can be\nspecified with the -d/--database\
    \ option (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --database_list
- id: in_database_update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_update
- id: in_input_extension
  doc: "Specify the extension of the input file(s) specified\nvia -i/--input. If not\
    \ specified will try to infer it\nfrom the input files (default: None)"
  type: File
  inputBinding:
    prefix: --input_extension
- id: in_how_many
  doc: "Specify the number of SGBs to report in the output;\n\"all\" is a special\
    \ value to report all the SGBs; this\nparam is not used when \"--only_input\"\
    \ is specified\n(default: 10)"
  type: long
  inputBinding:
    prefix: --how_many
- id: in_nproc
  doc: 'The number of CPUs to use (default: 1)'
  type: long
  inputBinding:
    prefix: --nproc
- id: in_database_folder
  doc: "Path to the folder that contains the database file\n(default: phylophlan_databases/)"
  type: Directory
  inputBinding:
    prefix: --database_folder
- id: in_only_input
  doc: "If specified provides a distance matrix between only\nthe input genomes provided\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --only_input
- id: in_add_ggb
  doc: If specified adds GGB assignments. If specified with
  type: boolean
  inputBinding:
    prefix: --add_ggb
- id: in_overwrite
  doc: "If specified overwrite the output file if exists\n(default: False)"
  type: File
  inputBinding:
    prefix: --overwrite
- id: in_verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overwrite
  doc: "If specified overwrite the output file if exists\n(default: False)"
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite)
cwlVersion: v1.1
baseCommand:
- phylophlan_metagenomic
