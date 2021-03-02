class: CommandLineTool
id: pybel_compile.cwl
inputs:
- id: in_allow_naked_names
  doc: Enable lenient parsing for naked names
  type: boolean?
  inputBinding:
    prefix: --allow-naked-names
- id: in_allow_nested
  doc: Enable lenient parsing for nested statements
  type: boolean?
  inputBinding:
    prefix: --allow-nested
- id: in_disallow_unqualified_translocations
  doc: Disallow unqualified translocations
  type: boolean?
  inputBinding:
    prefix: --disallow-unqualified-translocations
- id: in_no_identifier_validation
  doc: Turn off identifier validation
  type: boolean?
  inputBinding:
    prefix: --no-identifier-validation
- id: in_no_citation_clearing
  doc: Turn off citation clearing
  type: boolean?
  inputBinding:
    prefix: --no-citation-clearing
- id: in_required_annotations
  doc: Specify multiple required annotations
  type: string?
  inputBinding:
    prefix: --required-annotations
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pybel
- compile
