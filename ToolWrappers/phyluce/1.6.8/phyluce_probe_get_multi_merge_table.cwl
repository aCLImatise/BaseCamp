class: CommandLineTool
id: phyluce_probe_get_multi_merge_table.cwl
inputs:
- id: in_conf
  doc: A config file mapping names to BED files.
  type: File?
  inputBinding:
    prefix: --conf
- id: in_output
  doc: A SQLite database to create during integration.
  type: string?
  inputBinding:
    prefix: --output
- id: in_base_tax_on
  doc: The base taxon to use.
  type: string?
  inputBinding:
    prefix: --base-taxon
- id: in_filter
  doc: "A file-type filter to apply to the BED directory of\nfiles\n"
  type: File?
  inputBinding:
    prefix: --filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_multi_merge_table
