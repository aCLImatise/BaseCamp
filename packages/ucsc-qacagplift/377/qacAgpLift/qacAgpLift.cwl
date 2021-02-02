class: CommandLineTool
id: qacAgpLift.cwl
inputs:
- id: in_m_score
  doc: "- score to use for missing data (otherwise fail)\nrange: 0-99, recommended\
    \ values are 98 (low qual) or 99 (high)\n"
  type: long
  inputBinding:
    prefix: -mScore
- id: in_scaffold_to_chrom_dot_agp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scaffolds_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qacAgpLift
