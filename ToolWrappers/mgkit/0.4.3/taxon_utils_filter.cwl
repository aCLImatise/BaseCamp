class: CommandLineTool
id: taxon_utils_filter.cwl
inputs:
- id: in_taxonomy
  doc: Taxonomy file  [required]
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_include_tax_on_id
  doc: Include only taxon_ids
  type: long?
  inputBinding:
    prefix: --include-taxon-id
- id: in_include_tax_on_name
  doc: Include only taxon_names
  type: string?
  inputBinding:
    prefix: --include-taxon-name
- id: in_exclude_tax_on_id
  doc: Exclude taxon_ids
  type: long?
  inputBinding:
    prefix: --exclude-taxon-id
- id: in_exclude_tax_on_name
  doc: Exclude taxon_names
  type: string?
  inputBinding:
    prefix: --exclude-taxon-name
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- filter
