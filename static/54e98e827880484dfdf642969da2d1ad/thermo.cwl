class: CommandLineTool
id: thermo.cwl
inputs:
- id: output
  doc: 'output file name (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: chrom
  doc: 'directory with chrom files (FASTA format) '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- thermo
