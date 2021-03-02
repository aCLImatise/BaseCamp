class: CommandLineTool
id: ppanini.cwl
inputs:
- id: in_input_table
  doc: 'REQUIRED: Gene abundance table with metadata'
  type: string?
  inputBinding:
    prefix: --input_table
- id: in_output_folder
  doc: Folder containing results
  type: Directory?
  inputBinding:
    prefix: --output-folder
- id: in_basename
  doc: BASENAME for all the output files
  type: string?
  inputBinding:
    prefix: --basename
- id: in_uniref_two_go
  doc: uniref to GO term mapping file
  type: long?
  inputBinding:
    prefix: --uniref2go
- id: in_log_level
  doc: 'Choices: [DEBUG, INFO, WARNING, ERROR, CRITICAL]'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_abundance_detection_level
  doc: Detection level of normalized relative abundance
  type: string?
  inputBinding:
    prefix: --abundance-detection-level
- id: in_t_shld_abund
  doc: '[X] Percentile Cutoff for Abundance; Default=75th'
  type: long?
  inputBinding:
    prefix: --tshld-abund
- id: in_t_shld_prev
  doc: Percentile cutoff for Prevalence
  type: string?
  inputBinding:
    prefix: --tshld-prev
- id: in_beta
  doc: Beta parameter for weights on percentiles
  type: string?
  inputBinding:
    prefix: --beta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Folder containing results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini
