class: CommandLineTool
id: planemo_lint.cwl
inputs:
- id: report_level
  doc: '[all|warn|error]'
  type: boolean
  inputBinding:
    prefix: --report_level
- id: report_x_unit
  doc: Output an XUnit report, useful for CI testing
  type: File
  inputBinding:
    prefix: --report_xunit
- id: fail_level
  doc: '[warn|error]'
  type: boolean
  inputBinding:
    prefix: --fail_level
- id: skip
  doc: Comma-separated list of lint tests to skip (e.g. passing --skip 'citations,xml_order'
    would skip linting of citations and best- practice XML ordering.
  type: string
  inputBinding:
    prefix: --skip
- id: xsd
  doc: / --no_xsd                Include tool XSD validation in linting process.
  type: boolean
  inputBinding:
    prefix: --xsd
- id: recursive
  doc: Recursively perform command for subdirectories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: urls
  doc: Check validity of URLs in XML files
  type: boolean
  inputBinding:
    prefix: --urls
- id: doi
  doc: Check validity of DOIs in XML files
  type: boolean
  inputBinding:
    prefix: --doi
- id: cond_a_requirements
  doc: Check tool requirements for availability in best practice Conda channels.
  type: boolean
  inputBinding:
    prefix: --conda_requirements
- id: bio_containers
  doc: Check best practice BioContainer namespaces for a container definition applicable
    for this tool.
  type: boolean
  inputBinding:
    prefix: --biocontainers
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- lint
