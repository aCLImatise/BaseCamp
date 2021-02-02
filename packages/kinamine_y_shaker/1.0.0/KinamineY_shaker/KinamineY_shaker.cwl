class: CommandLineTool
id: KinamineY_shaker.cwl
inputs:
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_protein_pilot_distinct_peptide_summary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fdr
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- KinamineY-shaker
