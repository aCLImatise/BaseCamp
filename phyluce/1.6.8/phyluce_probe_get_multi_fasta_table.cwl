class: CommandLineTool
id: phyluce_probe_get_multi_fasta_table.cwl
inputs:
- id: fast_as
  doc: A folder of fasta files.
  type: string
  inputBinding:
    prefix: --fastas
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
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_multi_fasta_table
