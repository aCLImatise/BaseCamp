class: CommandLineTool
id: ../../../icarus.py.cwl
inputs:
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    prefix: --reference
- id: in_fast
  doc: ''
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_no_html
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-html
- id: in_unique_mapping
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unique-mapping
- id: in_max_ref_number
  doc: ''
  type: boolean
  inputBinding:
    prefix: --max-ref-number
- id: in_references_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --references-list
- id: in_blast_db
  doc: ''
  type: boolean
  inputBinding:
    prefix: --blast-db
- id: in_test_no_ref
  doc: ''
  type: boolean
  inputBinding:
    prefix: --test-no-ref
- id: in_test_sv
  doc: ''
  type: boolean
  inputBinding:
    prefix: --test-sv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- icarus.py
