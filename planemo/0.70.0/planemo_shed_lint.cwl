class: CommandLineTool
id: planemo_shed_lint.cwl
inputs:
- id: recursive
  doc: Recursively perform command for nested repository directories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: fail_fast
  doc: If multiple repositories are specified and an error occurs stop immediately
    instead of processing remaining repositories.
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: report_level
  doc: '[all|warn|error]'
  type: boolean
  inputBinding:
    prefix: --report_level
- id: fail_level
  doc: '[warn|error]'
  type: boolean
  inputBinding:
    prefix: --fail_level
- id: tools
  doc: Lint tools discovered in the process of linting repositories.
  type: boolean
  inputBinding:
    prefix: --tools
- id: xsd
  doc: / --no_xsd                Include tool XSD validation in linting process.
  type: boolean
  inputBinding:
    prefix: --xsd
- id: ensure_metadata
  doc: Ensure .shed.yml files contain enough metadata for each repository to allow
    automated creation and/or updates.
  type: boolean
  inputBinding:
    prefix: --ensure_metadata
- id: urls
  doc: Check validity of URLs in XML files
  type: boolean
  inputBinding:
    prefix: --urls
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_lint
