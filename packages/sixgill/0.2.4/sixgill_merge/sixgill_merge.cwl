class: CommandLineTool
id: ../../../sixgill_merge.cwl
inputs:
- id: in_out
  doc: output file
  type: File
  inputBinding:
    prefix: --out
- id: in_no_gzip_out
  doc: Write plaintetxt (non-gzipped) output (default gzipped)
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: in_debug
  doc: Enable debug logging
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- sixgill_merge
