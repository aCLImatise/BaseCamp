class: CommandLineTool
id: add_gff_info_unipfile.cwl
inputs:
- id: in_mapping_file
  doc: Uniprot mapping file  [required]
  type: File?
  inputBinding:
    prefix: --mapping-file
- id: in_force_tax_on_id
  doc: Overwrite taxon_id if already present
  type: boolean?
  inputBinding:
    prefix: --force-taxon-id
- id: in_mapping
  doc: "[NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING]\nMappings\
    \ to add  [required]"
  type: boolean?
  inputBinding:
    prefix: --mapping
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
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
- unipfile
