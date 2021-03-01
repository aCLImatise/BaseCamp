class: CommandLineTool
id: extract_aln_ends.py.cwl
inputs:
- id: in_outfile
  doc: 'Write results to this file. (default: None)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose
  doc: 'Be verbose. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Print lots of debugging information (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_in_file
  doc: Path to alignments in SAM or BAM format.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_aln_ends.py
