class: CommandLineTool
id: tandem_genotypes_join.cwl
inputs:
- id: in_shrink
  doc: shrink the output
  type: boolean
  inputBinding:
    prefix: --shrink
- id: in_mean
  doc: "type of mean for positive/patient/case files:\n1=ordinary, 3=cubic (default=1)"
  type: long
  inputBinding:
    prefix: --mean
- id: in_scores
  doc: importance scores for gene parts
  type: File
  inputBinding:
    prefix: --scores
- id: in_verbose
  doc: show more details
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_positive_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tandem-genotypes-join
