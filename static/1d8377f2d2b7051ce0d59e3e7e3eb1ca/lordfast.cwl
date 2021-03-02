class: CommandLineTool
id: lordfast.cwl
inputs:
- id: in_ddeessccrriippttiioonn
  doc: "D\bDE\bES\bSC\bCR\bRI\bIP\bPT\bTI\bIO\bON\bN"
  type: string
  inputBinding:
    position: 0
- id: in_sensitive_tool_mapping
  doc: is  a  sensitive  tool for mapping long reads with high error
  type: string
  inputBinding:
    position: 1
- id: in_sequencing
  doc: technology  but  provides  the  user  the ability to change
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: to the reference genome file in FASTA format which is sup-
  type: File
  inputBinding:
    position: 0
- id: in_use
  doc: "_\bI_\bN_\bT  number  of  CPU cores. Pass 0 to use all the available"
  type: string
  inputBinding:
    position: 0
- id: in_ignore
  doc: "anchoring  positions  with more than _\bI_\bN_\bT reference hits."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lordfast
