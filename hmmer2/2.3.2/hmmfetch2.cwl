class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmfetch2.cwl
inputs:
- id: interpret_hmm_name
  doc: ': interpret <HMM name> instead as an HMM number (0..nhmm-1)'
  type: boolean
  inputBinding:
    prefix: -n
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
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
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmfetch2
