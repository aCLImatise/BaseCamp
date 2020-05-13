class: CommandLineTool
id: enrichm_classify.cwl
inputs:
- id: log
  doc: Output logging information to this file.
  type: string
  inputBinding:
    prefix: --log
- id: verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: genome_and_annotation_file
  doc: Path to file containing a genome<tab>annotation list
  type: string
  inputBinding:
    prefix: --genome_and_annotation_file
- id: genome_and_annotation_matrix
  doc: Path to file containing a genome annotation matrix
  type: string
  inputBinding:
    prefix: --genome_and_annotation_matrix
- id: custom_modules
  doc: Tab separated file containing module name, definition as the columns
  type: string
  inputBinding:
    prefix: --custom_modules
- id: cut_off
  doc: Output only modules with greater than this percent of the requied KO groups
    (default = print all modules)
  type: string
  inputBinding:
    prefix: --cutoff
- id: aggregate
  doc: Calculate the abundance of each pathway within each genome/sample (column)
  type: boolean
  inputBinding:
    prefix: --aggregate
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- classify
