class: CommandLineTool
id: crisprtools.cwl
inputs:
- id: merge
  doc: combine multiple files
  type: string
  inputBinding:
    position: 0
- id: help
  doc: display this message and exit
  type: string
  inputBinding:
    position: 1
- id: extract
  doc: extract sequences in fasta
  type: string
  inputBinding:
    position: 2
- id: filter
  doc: make new files based on parameters
  type: string
  inputBinding:
    position: 3
- id: sanitise
  doc: change the IDs of elements
  type: string
  inputBinding:
    position: 4
- id: stat
  doc: show statistics on some or all CRISPRs
  type: string
  inputBinding:
    position: 5
- id: rm
  doc: remove a group from a .crispr file
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- crisprtools
