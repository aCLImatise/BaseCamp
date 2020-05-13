class: CommandLineTool
id: scram_merge.cwl
inputs:
- id: r
  doc: '[Cram] Specifies the refseq:start-end range'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: '[Cram] Specifies the reference file.'
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: '[Cram] Sequences per slice, default 10000.'
  type: long
  inputBinding:
    prefix: -s
- id: s
  doc: '[Cram] Slices per container, default 1.'
  type: long
  inputBinding:
    prefix: -S
- id: v
  doc: '[Cram] Specify the file format version to write (eg 1.1, 2.0)'
  type: string
  inputBinding:
    prefix: -V
- id: x
  doc: '[Cram] Embed reference sequence.'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- scram_merge
