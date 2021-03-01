class: CommandLineTool
id: phyluce_probe_get_multi_fasta_table.cwl
inputs:
- id: in_fast_as
  doc: A folder of fasta files.
  type: Directory?
  inputBinding:
    prefix: --fastas
- id: in_output
  doc: A SQLite database to create during integration.
  type: string?
  inputBinding:
    prefix: --output
- id: in_base_tax_on
  doc: "The base taxon to use.\n"
  type: string?
  inputBinding:
    prefix: --base-taxon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_multi_fasta_table
