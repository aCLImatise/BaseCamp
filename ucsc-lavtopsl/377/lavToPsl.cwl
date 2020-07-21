class: CommandLineTool
id: ../../../lavToPsl.cwl
inputs:
- id: target_strand
  doc: set the target strand to c (default is no strand)
  type: string
  inputBinding:
    prefix: -target-strand
- id: bed
  doc: bed instead of psl
  type: string
  inputBinding:
    prefix: -bed
- id: score_file
  doc: output lav scores to side file, such that each psl line in out.psl is matched
    by a score line.
  type: File
  inputBinding:
    prefix: -scoreFile
- id: in_dot_lav
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lavToPsl
