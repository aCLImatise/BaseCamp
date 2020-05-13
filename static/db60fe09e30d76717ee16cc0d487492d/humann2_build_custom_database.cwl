class: CommandLineTool
id: humann2_build_custom_database.cwl
inputs:
- id: input
  doc: the fasta input file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the output folder
  type: string
  inputBinding:
    prefix: --output
- id: id_mapping
  doc: the file mapping fasta ids to taxonomy
  type: string
  inputBinding:
    prefix: --id-mapping
- id: taxonomic_profile
  doc: the file containing the taxonomic profile
  type: string
  inputBinding:
    prefix: --taxonomic-profile
- id: format
  doc: the final database format
  type: string
  inputBinding:
    prefix: --format
- id: genus_abundance_threshold
  doc: the minimum abundance for a genus to be included in the database
  type: string
  inputBinding:
    prefix: --genus-abundance-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_build_custom_database
