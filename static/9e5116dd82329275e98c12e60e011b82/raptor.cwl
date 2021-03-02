class: CommandLineTool
id: raptor.cwl
inputs:
- id: in_advanced_help
  doc: Prints the help page including advanced options.
  type: boolean?
  inputBinding:
    prefix: --advanced-help
- id: in_copyright
  doc: Prints the copyright/license information.
  type: boolean?
  inputBinding:
    prefix: --copyright
- id: in_export_help
  doc: "(std::string)\nExport the help page information. Value must be one of [html,\
    \ man]."
  type: boolean?
  inputBinding:
    prefix: --export-help
- id: in_version_check
  doc: "(bool)\nWhether to to check for the newest app version. Default: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/raptor:1.1.0--hb7ba0dd_0
cwlVersion: v1.1
baseCommand:
- raptor
