class: CommandLineTool
id: alevin_fry_view.cwl
inputs:
- id: in_help
  doc: Prints help information
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_output
  doc: output plain-text-file file
  type: File?
  inputBinding:
    prefix: --output
- id: in_rad
  doc: input RAD file
  type: File?
  inputBinding:
    prefix: --rad
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output plain-text-file file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- alevin-fry
- view
