class: CommandLineTool
id: phyluce_probe_get_clusters_from_taxa.cwl
inputs:
- id: clusters
  doc: The directory containing cluster files
  type: string
  inputBinding:
    prefix: --clusters
- id: db
  doc: The database to update
  type: string
  inputBinding:
    prefix: --db
- id: tax_a
  doc: The taxon overlaps to use
  type: string[]
  inputBinding:
    prefix: --taxa
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_clusters_from_taxa
