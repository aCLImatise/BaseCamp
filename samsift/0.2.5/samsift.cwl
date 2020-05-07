class: CommandLineTool
id: samsift.cwl
inputs:
- id: i
  doc: input SAM/BAM file [-]
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: output SAM/BAM file [-]
  type: File
  inputBinding:
    prefix: -o
- id: f
  doc: filtering expression [True]
  type: string
  inputBinding:
    prefix: -f
- id: c
  doc: code to be executed (e.g., assigning new tags) [None]
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: 'mode: strict (stop on first error) nonstop-keep (keep alignments causing errors)
    nonstop-remove (remove alignments causing errors) [strict]'
  type: string
  inputBinding:
    prefix: -m
- id: d
  doc: debugging expression to print [None]
  type: string
  inputBinding:
    prefix: -d
- id: t
  doc: debugging trigger [True]
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- samsift
