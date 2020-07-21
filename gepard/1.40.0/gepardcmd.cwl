class: CommandLineTool
id: ../../../gepardcmd.cwl
inputs:
- id: seq_one
  doc: ':        first sequence file'
  type: boolean
  inputBinding:
    prefix: -seq1
- id: seq_two
  doc: ':        second sequence file'
  type: boolean
  inputBinding:
    prefix: -seq2
- id: matrix
  doc: ':      substitution matrix file'
  type: boolean
  inputBinding:
    prefix: -matrix
- id: outfile
  doc: ':     output file name'
  type: boolean
  inputBinding:
    prefix: -outfile
- id: format
  doc: ":      output format, one of:  'png', 'jpg', 'bmp' (default:PNG)"
  type: boolean
  inputBinding:
    prefix: -format
- id: lower
  doc: lower limit for dot intensity (in %)
  type: boolean
  inputBinding:
    prefix: -lower
- id: upper
  doc: upper limit for dot intensity (in %)
  type: boolean
  inputBinding:
    prefix: -upper
- id: greyscale
  doc: greyscale start value (in %)
  type: boolean
  inputBinding:
    prefix: -greyscale
- id: silent
  doc: generate no output (except error messages)
  type: boolean
  inputBinding:
    prefix: -silent
outputs: []
cwlVersion: v1.1
baseCommand:
- gepardcmd
