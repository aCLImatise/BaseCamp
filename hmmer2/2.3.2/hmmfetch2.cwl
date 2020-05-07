class: CommandLineTool
id: hmmfetch2.cwl
inputs:
- id: hmm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hmm_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: n
  doc: ': interpret <HMM name> instead as an HMM number (0..nhmm-1)'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmfetch2
