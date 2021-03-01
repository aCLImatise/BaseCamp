class: CommandLineTool
id: hmmfetch2.cwl
inputs:
- id: in_interpret_hmm_name
  doc: ': interpret <HMM name> instead as an HMM number (0..nhmm-1)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_hmm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_hmm_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmfetch2
