class: CommandLineTool
id: seqdiff.cwl
inputs:
- id: in_first
  doc: ',      First sequence file (required)'
  type: boolean?
  inputBinding:
    prefix: --first
- id: in_second
  doc: ',     Second sequence file (required)'
  type: boolean?
  inputBinding:
    prefix: --second
- id: in_a_output
  doc: ',   File name for uniques from first file'
  type: boolean?
  inputBinding:
    prefix: --a_output
- id: in_b_output
  doc: ',   File name for uniques from second file'
  type: boolean?
  inputBinding:
    prefix: --b_output
- id: in_c_output
  doc: ',   File name for common entries'
  type: boolean?
  inputBinding:
    prefix: --c_output
- id: in_headers
  doc: ',    Compare headers instead of sequences (default: false)'
  type: boolean?
  inputBinding:
    prefix: --headers
- id: in_summary
  doc: ', Just show summary stats? (default: false)'
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_verbose
  doc: ',    Print extra details during the run'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqdiff
