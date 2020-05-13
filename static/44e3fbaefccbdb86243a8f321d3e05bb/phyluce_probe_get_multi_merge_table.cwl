class: CommandLineTool
id: phyluce_probe_get_multi_merge_table.cwl
inputs:
- id: conf
  doc: A config file mapping names to BED files.
  type: string
  inputBinding:
    prefix: --conf
- id: output
  doc: A SQLite database to create during integration.
  type: string
  inputBinding:
    prefix: --output
- id: base_tax_on
  doc: The base taxon to use.
  type: string
  inputBinding:
    prefix: --base-taxon
- id: filter
  doc: A file-type filter to apply to the BED directory of files
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_multi_merge_table
