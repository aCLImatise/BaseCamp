class: CommandLineTool
id: add_gff_info_uniprot.cwl
inputs:
- id: in_verbose
  doc: Contact email  [required]
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_buffer
  doc: "Number of annotations to keep in memory  [default:\n50]"
  type: long?
  inputBinding:
    prefix: --buffer
- id: in_force_tax_on_id
  doc: Overwrite taxon_id if already present
  type: boolean?
  inputBinding:
    prefix: --force-taxon-id
- id: in_tax_on_id
  doc: "Add taxonomic ids to annotations, if taxon_id is\nfound, it won't be Overwritten."
  type: boolean?
  inputBinding:
    prefix: --taxon-id
- id: in_lineage
  doc: Add taxonomic lineage to annotations
  type: boolean?
  inputBinding:
    prefix: --lineage
- id: in_eggnog
  doc: Add eggNOG mappings to annotations
  type: boolean?
  inputBinding:
    prefix: --eggnog
- id: in_enzymes
  doc: Add EC mappings to annotations
  type: boolean?
  inputBinding:
    prefix: --enzymes
- id: in_kegg_orthologs
  doc: Add KO mappings to annotations
  type: boolean?
  inputBinding:
    prefix: --kegg_orthologs
- id: in_protein_names
  doc: Add Uniprot description
  type: boolean?
  inputBinding:
    prefix: --protein-names
- id: in_mapping
  doc: Add any DB mappings to annotations
  type: string?
  inputBinding:
    prefix: --mapping
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- add-gff-info
- uniprot
