class: CommandLineTool
id: dv_postprocess_variants.py.cwl
inputs:
- id: in_outfile
  doc: ''
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_in_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --infile
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dv_postprocess_variants.py
