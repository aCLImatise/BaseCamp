class: CommandLineTool
id: ppanini.cwl
inputs:
- id: input_table
  doc: 'REQUIRED: Gene abundance table with metadata'
  type: string
  inputBinding:
    prefix: --input_table
- id: output_folder
  doc: Folder containing results
  type: string
  inputBinding:
    prefix: --output-folder
- id: basename
  doc: BASENAME for all the output files
  type: string
  inputBinding:
    prefix: --basename
- id: uniref2go
  doc: uniref to GO term mapping file
  type: string
  inputBinding:
    prefix: --uniref2go
- id: log_level
  doc: 'Choices: [DEBUG, INFO, WARNING, ERROR, CRITICAL]'
  type: string
  inputBinding:
    prefix: --log-level
- id: abundance_detection_level
  doc: Detection level of normalized relative abundance
  type: string
  inputBinding:
    prefix: --abundance-detection-level
- id: t_shld_abund
  doc: '[X] Percentile Cutoff for Abundance; Default=75th'
  type: string
  inputBinding:
    prefix: --tshld-abund
- id: t_shld_prev
  doc: Percentile cutoff for Prevalence
  type: string
  inputBinding:
    prefix: --tshld-prev
- id: beta
  doc: Beta parameter for weights on percentiles
  type: string
  inputBinding:
    prefix: --beta
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini
