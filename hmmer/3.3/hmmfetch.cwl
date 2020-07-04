class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmfetch.cwl
inputs:
- id: second_cmdline_arg
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_hmm_file_f
  doc: ': output HMM to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: output_hmm_file_named
  doc: ': output HMM to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: index
  doc: ': index the <hmmfile>, creating <hmmfile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmfetch
