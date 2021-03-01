class: CommandLineTool
id: unitem_unique.cwl
inputs:
- id: in_extension
  doc: "extension of bins (all other files in directory are\nignored) (default: fna)"
  type: Directory?
  inputBinding:
    prefix: --extension
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_bin_dir
  doc: directory containing bins
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unitem:0.0.18--py_0
cwlVersion: v1.1
baseCommand:
- unitem
- unique
