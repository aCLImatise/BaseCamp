class: CommandLineTool
id: seqhax_rebarcode.cwl
inputs:
- id: in_output_interleaved_reads
  doc: 'Output interleaved reads to FILE. Use - for stdout. (default: no output)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_r_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_interleaved_reads
  doc: 'Output interleaved reads to FILE. Use - for stdout. (default: no output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_interleaved_reads)
hints: []
cwlVersion: v1.1
baseCommand:
- seqhax
- rebarcode
