class: CommandLineTool
id: HLAProfiler.pl_create_taxonomy.cwl
inputs:
- id: in_reference
  doc: '|r    HLA reference fasta (required)'
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_cwd
  doc: File containing the names of common and well-documented alleles. This file
    can be blank but must be specified.(required)
  type: boolean
  inputBinding:
    prefix: -cwd
- id: in_output_dir
  doc: '|od  parent directory of taxonomy (default:".")'
  type: boolean
  inputBinding:
    prefix: -output_dir
- id: in_log
  doc: '|l          name of the prediction log file'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- create_taxonomy
