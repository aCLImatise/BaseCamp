class: CommandLineTool
id: add_gff_info_uniprot.cwl
inputs:
- id: email
  doc: Contact email  [required]
  type: string
  inputBinding:
    prefix: --email
- id: buffer
  doc: 'Number of annotations to keep in memory  [default: 50]'
  type: long
  inputBinding:
    prefix: --buffer
- id: force_tax_on_id
  doc: Overwrite taxon_id if already present
  type: boolean
  inputBinding:
    prefix: --force-taxon-id
- id: tax_on_id
  doc: Add taxonomic ids to annotations, if taxon_id is found, it won't be Overwritten.
  type: boolean
  inputBinding:
    prefix: --taxon-id
- id: lineage
  doc: Add taxonomic lineage to annotations
  type: boolean
  inputBinding:
    prefix: --lineage
- id: eggnog
  doc: Add eggNOG mappings to annotations
  type: boolean
  inputBinding:
    prefix: --eggnog
- id: enzymes
  doc: Add EC mappings to annotations
  type: boolean
  inputBinding:
    prefix: --enzymes
- id: kegg_orthologs
  doc: Add KO mappings to annotations
  type: boolean
  inputBinding:
    prefix: --kegg_orthologs
- id: protein_names
  doc: Add Uniprot description
  type: boolean
  inputBinding:
    prefix: --protein-names
- id: mapping
  doc: Add any DB mappings to annotations
  type: string
  inputBinding:
    prefix: --mapping
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- uniprot
