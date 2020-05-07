class: CommandLineTool
id: phylophlan_get_reference.cwl
inputs:
- id: get
  doc: 'Specify the taxonomic label for which download the set of reference genomes.
    The label must represent a valid taxonomic level or the special case "all" (default:
    None)'
  type: string
  inputBinding:
    prefix: --get
- id: list_clades
  doc: 'Print for all taxa the total number of species and reference genomes available
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --list_clades
- id: database_update
  doc: 'Update the databases file (default: False)'
  type: boolean
  inputBinding:
    prefix: --database_update
- id: output_file_extension
  doc: 'Specify path to the extension of the output files (default: .fna.gz)'
  type: string
  inputBinding:
    prefix: --output_file_extension
- id: output
  doc: 'Specify path to the output folder where to save the files, required when -g/--get
    is specified (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: how_many
  doc: 'Specify how many reference genomes to download, where -1 stands for "all available"
    (default: 4)'
  type: string
  inputBinding:
    prefix: --how_many
- id: genbank_mapping
  doc: 'The local GenBank mapping file, if not found it will be automatically downloaded
    (default: assembly_summary_genbank.txt)'
  type: string
  inputBinding:
    prefix: --genbank_mapping
- id: verbose
  doc: 'Prints more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan_get_reference
