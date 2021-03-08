class: CommandLineTool
id: nextstrain_remote_download.cwl
inputs:
- id: in_recursively
  doc: "Download all files with the given remote path prefix\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --recursively
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
- remote
- download
