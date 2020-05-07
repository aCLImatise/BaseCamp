class: CommandLineTool
id: AMAS.py_command.cwl
inputs:
- id: concat
  doc: Concatenate input alignments
  type: string
  inputBinding:
    position: 0
- id: convert
  doc: Convert to other file format
  type: string
  inputBinding:
    position: 1
- id: replicate
  doc: Create replicate data sets for phylogenetic jackknife
  type: string
  inputBinding:
    position: 2
- id: split
  doc: Split alignment according to a partitions file
  type: string
  inputBinding:
    position: 3
- id: summary
  doc: Write alignment summary
  type: string
  inputBinding:
    position: 4
- id: remove
  doc: Remove taxa from alignment
  type: string
  inputBinding:
    position: 5
- id: command
  doc: Subcommand to run
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- AMAS.py
- command
