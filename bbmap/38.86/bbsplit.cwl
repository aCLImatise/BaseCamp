class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bbsplit.sh.cwl
inputs:
- id: var_0
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: random
  doc: (select one top-scoring site randomly)
  type: string
  inputBinding:
    position: 2
- id: retain_topscoring_sites
  doc: (retain all top-scoring sites.  Does not work yet with SAM output)
  type: string
  inputBinding:
    position: 3
- id: var_4
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: var_5
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: write_copy_output
  doc: (write a copy to the output for each reference to which it maps)
  type: string
  inputBinding:
    position: 2
- id: split
  doc: (write a copy to the AMBIGUOUS_ output for each reference to which it maps)
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bbsplit.sh
