class: CommandLineTool
id: tagore.cwl
inputs:
- id: in_input
  doc: Input BED-like file
  type: File?
  inputBinding:
    prefix: --input
- id: in_p
  doc: '[output file prefix], --prefix [output file prefix]  Output prefix [Default:
    "out"]'
  type: File?
  inputBinding:
    prefix: -p
- id: in_b
  doc: '[hg78/hg38], --build [hg78/hg38]                     Human genome build to
    use [Default: hg38]'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_force
  doc: Overwrite output files if they exist already
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_of_mt
  doc: '[png/pdf], --oformat [png/pdf]                    Output format for conversion
    (pdf requires rsvg-convert)'
  type: boolean?
  inputBinding:
    prefix: -ofmt
- id: in_verbose
  doc: Display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_p
  doc: '[output file prefix], --prefix [output file prefix]  Output prefix [Default:
    "out"]'
  type: File?
  outputBinding:
    glob: $(inputs.in_p)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tagore:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- tagore
