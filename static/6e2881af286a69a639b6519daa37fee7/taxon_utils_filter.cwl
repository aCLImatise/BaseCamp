class: CommandLineTool
id: taxon_utils_filter.cwl
inputs:
- id: taxonomy
  doc: Taxonomy file  [required]
  type: string
  inputBinding:
    prefix: --taxonomy
- id: include_tax_on_id
  doc: Include only taxon_ids
  type: long
  inputBinding:
    prefix: --include-taxon-id
- id: include_tax_on_name
  doc: Include only taxon_names
  type: string
  inputBinding:
    prefix: --include-taxon-name
- id: exclude_tax_on_id
  doc: Exclude taxon_ids
  type: long
  inputBinding:
    prefix: --exclude-taxon-id
- id: exclude_tax_on_name
  doc: Exclude taxon_names
  type: string
  inputBinding:
    prefix: --exclude-taxon-name
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- filter
