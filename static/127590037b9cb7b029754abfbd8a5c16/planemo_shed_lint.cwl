class: CommandLineTool
id: planemo_shed_lint.cwl
inputs:
- id: in_recursive
  doc: "Recursively perform command for nested\nrepository directories."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_fail_fast
  doc: "If multiple repositories are specified and\nan error occurs stop immediately\
    \ instead of\nprocessing remaining repositories."
  type: boolean?
  inputBinding:
    prefix: --fail_fast
- id: in_tools
  doc: "Lint tools discovered in the process of\nlinting repositories."
  type: boolean?
  inputBinding:
    prefix: --tools
- id: in_no_xsd
  doc: Include tool XSD validation in linting
  type: boolean?
  inputBinding:
    prefix: --no_xsd
- id: in_urls
  doc: Check validity of URLs in XML files
  type: boolean?
  inputBinding:
    prefix: --urls
- id: in_process_dot
  doc: --ensure_metadata               Ensure .shed.yml files contain enough
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- shed_lint
