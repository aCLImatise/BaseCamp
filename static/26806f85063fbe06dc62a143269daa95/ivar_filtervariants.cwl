class: CommandLineTool
id: ivar_filtervariants.cwl
inputs:
- id: in_minimum_fration_files
  doc: 'Minimum fration of files required to contain the same variant. Specify value
    within [0,1]. (Default: 1)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_text_file_one
  doc: A text file with one variant file per line.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_required_prefix_file
  doc: (Required) Prefix for the output filtered tsv file
  type: File?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_file
  doc: (Required) Prefix for the output filtered tsv file
  type: File?
  outputBinding:
    glob: $(inputs.in_required_prefix_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ivar:1.3.1--h089eab3_0
cwlVersion: v1.1
baseCommand:
- ivar
- filtervariants
