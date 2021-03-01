class: CommandLineTool
id: phyluce_probe_get_clusters_from_taxa.cwl
inputs:
- id: in_clusters
  doc: The directory containing cluster files
  type: Directory?
  inputBinding:
    prefix: --clusters
- id: in_db
  doc: The database to update
  type: string?
  inputBinding:
    prefix: --db
- id: in_tax_a
  doc: "The taxon overlaps to use\n"
  type: string[]
  inputBinding:
    prefix: --taxa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_clusters_from_taxa
