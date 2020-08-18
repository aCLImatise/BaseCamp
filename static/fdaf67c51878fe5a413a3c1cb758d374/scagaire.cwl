class: CommandLineTool
id: ../../../scagaire.cwl
inputs:
- id: database_file
  doc: 'Database file of species to genes. Defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --database_file
- id: database_name
  doc: 'Database name from abricate (default: resfinder)'
  type: string
  inputBinding:
    prefix: --database_name
- id: results_type
  doc: 'Format of input results. Defaults to automatically detecting format. (default:
    None)'
  type: string
  inputBinding:
    prefix: --results_type
- id: output_file
  doc: 'Output filename, defaults to STDOUT (default: None)'
  type: string
  inputBinding:
    prefix: --output_file
- id: summary_file
  doc: 'Output summary filename (default: gene_summary.tsv)'
  type: string
  inputBinding:
    prefix: --summary_file
- id: overwrite_files
  doc: 'Silently overwrite output files if they already exist (default: False)'
  type: string
  inputBinding:
    prefix: --overwrite_files
- id: minimum_occurances
  doc: 'Minimum number of occurances of a gene in the database to use (default: 0)'
  type: long
  inputBinding:
    prefix: --minimum_occurances
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: species
  doc: Species name, use scagaire_species to see all available. Multiple species can
    be passed in comma separated.
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: Input file of AMR results from Abricate etc...
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scagaire
