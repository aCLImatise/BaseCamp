class: CommandLineTool
id: vep.cwl
inputs:
- id: in_input_file
  doc: Input file
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_force_overwrite
  doc: Force overwriting of output file
  type: File?
  inputBinding:
    prefix: --force_overwrite
- id: in_species
  doc: '[species]    Species to use [default: "human"]'
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_everything
  doc: "Shortcut switch to turn on commonly used options. See web\ndocumentation for\
    \ details [default: off]"
  type: boolean?
  inputBinding:
    prefix: --everything
- id: in_fork
  doc: '[num_forks]     Use forking to improve script runtime'
  type: boolean?
  inputBinding:
    prefix: --fork
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_force_overwrite
  doc: Force overwriting of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0
cwlVersion: v1.1
baseCommand:
- vep
