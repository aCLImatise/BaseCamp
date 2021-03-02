class: CommandLineTool
id: deepac_getmodels.cwl
inputs:
- id: in_sensitive
  doc: Rebuild the sensitive model.
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_rapid
  doc: Rebuild the rapid CNN model.
  type: boolean?
  inputBinding:
    prefix: --rapid
- id: in_fetch
  doc: "Fetch and compile the latest models and configs from the\nonline repository."
  type: boolean?
  inputBinding:
    prefix: --fetch
- id: in_download_only
  doc: "Fetch weights and config files but do not compile the\nmodels.\n"
  type: boolean?
  inputBinding:
    prefix: --download-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- getmodels
