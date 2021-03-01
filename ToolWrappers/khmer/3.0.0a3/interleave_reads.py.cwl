class: CommandLineTool
id: interleave_reads.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_no_reformat
  doc: "Do not reformat read names or enforce consistency\n(default: False)"
  type: File?
  inputBinding:
    prefix: --no-reformat
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
- id: in_left
  doc: right
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- interleave-reads.py
