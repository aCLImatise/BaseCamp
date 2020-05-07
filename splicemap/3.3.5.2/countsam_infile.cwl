class: CommandLineTool
id: countsam_infile.sam.cwl
inputs:
- id: ref_flat_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- countsam
- infile.sam
