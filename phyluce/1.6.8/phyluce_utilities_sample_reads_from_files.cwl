class: CommandLineTool
id: phyluce_utilities_sample_reads_from_files.cwl
inputs:
- id: conf
  doc: The path to the config file giving reads to sample
  type: string
  inputBinding:
    prefix: --conf
- id: output
  doc: The path to output directory
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_sample_reads_from_files
