class: CommandLineTool
id: split_paired_reads.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_output_dir
  doc: "Output split reads to specified directory. Creates\ndirectory if necessary\
    \ (default: )"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_output_orphaned
  doc: "Allow \"orphaned\" reads and extract them to this file\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output-orphaned
- id: in_output_first
  doc: 'Output "left" reads to this file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-first
- id: in_output_second
  doc: 'Output "right" reads to this file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-second
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
- id: in_in_file
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output split reads to specified directory. Creates\ndirectory if necessary\
    \ (default: )"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_first
  doc: 'Output "left" reads to this file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_first)
- id: out_output_second
  doc: 'Output "right" reads to this file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_second)
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- split-paired-reads.py
