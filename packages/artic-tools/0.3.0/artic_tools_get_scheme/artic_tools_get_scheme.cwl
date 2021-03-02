class: CommandLineTool
id: artic_tools_get_scheme.cwl
inputs:
- id: in_scheme_version
  doc: =0      The ARTIC primer scheme version (default = latest)
  type: long?
  inputBinding:
    prefix: --schemeVersion
- id: in_outdir
  doc: The directory to write the scheme and reference sequence to
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_scheme
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0
cwlVersion: v1.1
baseCommand:
- artic-tools
- get_scheme
