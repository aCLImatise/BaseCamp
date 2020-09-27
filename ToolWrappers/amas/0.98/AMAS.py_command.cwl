class: CommandLineTool
id: AMAS.py_command.cwl
inputs:
- id: in_concat
  doc: Concatenate input alignments
  type: string
  inputBinding:
    position: 0
- id: in_convert
  doc: Convert to other file format
  type: string
  inputBinding:
    position: 1
- id: in_replicate
  doc: Create replicate data sets for phylogenetic jackknife
  type: string
  inputBinding:
    position: 2
- id: in_split
  doc: Split alignment according to a partitions file
  type: string
  inputBinding:
    position: 3
- id: in_summary
  doc: Write alignment summary
  type: string
  inputBinding:
    position: 4
- id: in_remove
  doc: Remove taxa from alignment
  type: string
  inputBinding:
    position: 5
- id: in_command
  doc: Subcommand to run
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AMAS.py
- command
