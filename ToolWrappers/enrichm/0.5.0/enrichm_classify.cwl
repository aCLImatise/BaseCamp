class: CommandLineTool
id: enrichm_classify.cwl
inputs:
- id: in_log
  doc: Output logging information to this file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite previous run
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_genome_and_annotation_file
  doc: Path to file containing a genome<tab>annotation list
  type: File?
  inputBinding:
    prefix: --genome_and_annotation_file
- id: in_genome_and_annotation_matrix
  doc: Path to file containing a genome annotation matrix
  type: File?
  inputBinding:
    prefix: --genome_and_annotation_matrix
- id: in_custom_modules
  doc: Tab separated file containing module name, definition as the columns
  type: File?
  inputBinding:
    prefix: --custom_modules
- id: in_cut_off
  doc: Output only modules with greater than this percent of the requied KO groups
    (default = print all modules)
  type: string?
  inputBinding:
    prefix: --cutoff
- id: in_aggregate
  doc: Calculate the abundance of each pathway within each genome/sample (column)
  type: boolean?
  inputBinding:
    prefix: --aggregate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file.
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- enrichm
- classify
