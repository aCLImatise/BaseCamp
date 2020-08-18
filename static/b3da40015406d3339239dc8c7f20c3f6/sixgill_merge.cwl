class: CommandLineTool
id: ../../../sixgill_merge.cwl
inputs:
- id: out
  doc: output file
  type: string
  inputBinding:
    prefix: --out
- id: no_gzip_out
  doc: Write plaintetxt (non-gzipped) output (default gzipped)
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: debug
  doc: Enable debug logging
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_merge
