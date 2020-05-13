class: CommandLineTool
id: phyluce_probe_query_multi_fasta_table.cwl
inputs:
- id: db
  doc: The database to query
  type: string
  inputBinding:
    prefix: --db
- id: output
  doc: When using --specific-counts, output a BED file of those loci
  type: string
  inputBinding:
    prefix: --output
- id: base_tax_on
  doc: The base taxon to use.
  type: string
  inputBinding:
    prefix: --base-taxon
- id: specific_counts
  doc: Return data for a specific minimum number of taxa.
  type: string
  inputBinding:
    prefix: --specific-counts
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_query_multi_fasta_table
