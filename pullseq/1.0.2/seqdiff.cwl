class: CommandLineTool
id: seqdiff.cwl
inputs:
- id: a_output
  doc: ',   File name for uniques from first file'
  type: boolean
  inputBinding:
    prefix: --a_output
- id: b_output
  doc: ',   File name for uniques from second file'
  type: boolean
  inputBinding:
    prefix: --b_output
- id: c_output
  doc: ',   File name for common entries'
  type: boolean
  inputBinding:
    prefix: --c_output
- id: headers
  doc: ',    Compare headers instead of sequences (default: false)'
  type: boolean
  inputBinding:
    prefix: --headers
- id: summary
  doc: ', Just show summary stats? (default: false)'
  type: boolean
  inputBinding:
    prefix: --summary
- id: verbose
  doc: ',    Print extra details during the run'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- seqdiff
