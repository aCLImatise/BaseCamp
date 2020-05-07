class: CommandLineTool
id: statsGenerator.cwl
inputs:
- id: a
  doc: read input from 'file.atac'
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: write stats to files prefixed with 'outprefix'
  type: boolean
  inputBinding:
    prefix: -p
- id: g
  doc: use a genome size of g for the Nx computation, defaults to the length of the
    A sequence.  Or use the actual length of sequence A or B.
  type: boolean
  inputBinding:
    prefix: -g
- id: ta
  doc: read tandem repeats for A from trfile
  type: boolean
  inputBinding:
    prefix: -ta
- id: tb
  doc: read tandem repeats for B from trfile
  type: boolean
  inputBinding:
    prefix: -tb
outputs: []
cwlVersion: v1.1
baseCommand:
- statsGenerator
