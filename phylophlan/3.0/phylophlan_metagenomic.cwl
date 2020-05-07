class: CommandLineTool
id: phylophlan_metagenomic.cwl
inputs:
- id: input
  doc: 'Input folder containing the metagenomic bins to be indexed (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: output_prefix
  doc: 'Prefix used for the output folders: indexed bins, distance estimations. If
    not specified, the input folder will be used (default: None)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: database
  doc: 'Database name, available options can be listed using the --database_list parameter
    (default: None)'
  type: string
  inputBinding:
    prefix: --database
- id: database_list
  doc: 'List of all the available databases that can be specified with the -d/--database
    option (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_list
- id: database_update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_update
- id: input_extension
  doc: 'Specify the extension of the input file(s) specified via -i/--input. If not
    specified will try to infer it from the input files (default: None)'
  type: string
  inputBinding:
    prefix: --input_extension
- id: how_many
  doc: 'Specify the number of SGBs to report in the output; "all" is a special value
    to report all the SGBs; this param is not used when "--only_input" is specified
    (default: 10)'
  type: string
  inputBinding:
    prefix: --how_many
- id: nproc
  doc: 'The number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --nproc
- id: database_folder
  doc: 'Path to the folder that contains the database file (default: phylophlan_databases/)'
  type: string
  inputBinding:
    prefix: --database_folder
- id: only_input
  doc: 'If specified provides a distance matrix between only the input genomes provided
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --only_input
- id: add_ggb
  doc: 'If specified adds GGB assignments. If specified with --add_fgb, then -n/--how_many
    will be set to 1 and will be adding a column that reports the closest reference
    genome (default: False)'
  type: boolean
  inputBinding:
    prefix: --add_ggb
- id: add_fgb
  doc: 'If specified adds FGB assignments. If specified with --add_ggb, then -n/--how_many
    will be set to 1 and will be adding a column that reports the closest reference
    genome (default: False)'
  type: boolean
  inputBinding:
    prefix: --add_fgb
- id: overwrite
  doc: 'If specified overwrite the output file if exists (default: False)'
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
- phylophlan_metagenomic
