class: CommandLineTool
id: humann2_build_custom_database.cwl
inputs:
- id: in_input
  doc: the fasta input file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: the output folder
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_id_mapping
  doc: the file mapping fasta ids to taxonomy
  type: File?
  inputBinding:
    prefix: --id-mapping
- id: in_taxonomic_profile
  doc: the file containing the taxonomic profile
  type: File?
  inputBinding:
    prefix: --taxonomic-profile
- id: in_format
  doc: the final database format
  type: string?
  inputBinding:
    prefix: --format
- id: in_genus_abundance_threshold
  doc: "the minimum abundance for a genus to be included in the database\n"
  type: string?
  inputBinding:
    prefix: --genus-abundance-threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: the output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_build_custom_database
