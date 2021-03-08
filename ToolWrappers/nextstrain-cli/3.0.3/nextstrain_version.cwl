class: CommandLineTool
id: nextstrain_version.cwl
inputs:
- id: in_verbose
  doc: "Show versions of individual Nextstrain components in the image\n(default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- version
