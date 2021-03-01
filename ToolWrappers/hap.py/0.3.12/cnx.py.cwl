class: CommandLineTool
id: cnx.py.cwl
inputs:
- id: in_output
  doc: Output file name (json format)
  type: File?
  inputBinding:
    prefix: --output
- id: in_bam
  doc: pass a BAM file for aligner name/version extraction
  type: File?
  inputBinding:
    prefix: --bam
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_caller
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name (json format)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cnx.py
