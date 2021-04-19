class: CommandLineTool
id: predex_ipa.cwl
inputs:
- id: in_input
  doc: Input dir with IPA downloaded table
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output dir to write processed data to\n(default = current)"
  type: string?
  inputBinding:
    prefix: --output
- id: in_extension
  doc: Extension of IPA files (default = .txt)
  type: string?
  inputBinding:
    prefix: --extension
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- predex
- ipa
