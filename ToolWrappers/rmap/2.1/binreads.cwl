class: CommandLineTool
id: binreads.cwl
inputs:
- id: in_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_chrom
  doc: chrom sizes file
  type: boolean?
  inputBinding:
    prefix: -chrom
- id: in_verbose
  doc: print more run info
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_bin
  doc: size of bins
  type: boolean?
  inputBinding:
    prefix: -bin
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_bed_format_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Name of output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- binreads
