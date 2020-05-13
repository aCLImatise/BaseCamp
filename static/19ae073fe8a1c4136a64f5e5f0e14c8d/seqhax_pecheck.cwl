class: CommandLineTool
id: seqhax_pecheck.cwl
inputs:
- id: o
  doc: 'Output interleaved reads to FILE. Use - for stdout. All sets of paired end
    files will end up in same output!!! (default: no output)'
  type: File
  inputBinding:
    prefix: -o
- id: i
  doc: Interleaved inputs
  type: boolean
  inputBinding:
    prefix: -i
- id: q
  doc: Don't print tabular summary
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: 'Number of parallel threads (default: no output)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- pecheck
