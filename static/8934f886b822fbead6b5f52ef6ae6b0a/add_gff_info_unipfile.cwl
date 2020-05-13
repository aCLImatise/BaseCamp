class: CommandLineTool
id: add_gff_info_unipfile.cwl
inputs:
- id: mapping_file
  doc: Uniprot mapping file  [required]
  type: string
  inputBinding:
    prefix: --mapping-file
- id: force_tax_on_id
  doc: Overwrite taxon_id if already present
  type: boolean
  inputBinding:
    prefix: --force-taxon-id
- id: mapping
  doc: '[NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING] Mappings
    to add  [required]'
  type: boolean
  inputBinding:
    prefix: --mapping
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- unipfile
