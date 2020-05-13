class: CommandLineTool
id: bismark_methylation_extractor.cwl
inputs:
- id: ot
  doc: original top strand
  type: string
  inputBinding:
    position: 0
- id: c_tot
  doc: complementary to original top strand
  type: string
  inputBinding:
    position: 1
- id: ob
  doc: original bottom strand
  type: string
  inputBinding:
    position: 2
- id: cto_b
  doc: complementary to original bottom strand
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bismark_methylation_extractor
