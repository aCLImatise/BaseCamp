class: CommandLineTool
id: thermo.cwl
inputs:
- id: in_output
  doc: 'output file name (default: stdout)'
  type: File
  inputBinding:
    prefix: -output
- id: in_chrom
  doc: directory with chrom files (FASTA format)
  type: boolean
  inputBinding:
    prefix: -chrom
- id: in_verbose
  doc: print more run info
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_target_regions_slash_sequences
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file name (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- thermo
