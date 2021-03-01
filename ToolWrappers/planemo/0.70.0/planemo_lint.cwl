class: CommandLineTool
id: planemo_lint.cwl
inputs:
- id: in_report_x_unit
  doc: Output an XUnit report, useful for CI
  type: File?
  inputBinding:
    prefix: --report_xunit
- id: in_skip
  doc: "Comma-separated list of lint tests to skip\n(e.g. passing --skip 'citations,xml_order'\n\
    would skip linting of citations and best-\npractice XML ordering."
  type: string?
  inputBinding:
    prefix: --skip
- id: in_no_xsd
  doc: Include tool XSD validation in linting
  type: boolean?
  inputBinding:
    prefix: --no_xsd
- id: in_doi
  doc: Check validity of DOIs in XML files
  type: boolean?
  inputBinding:
    prefix: --doi
- id: in_cond_a_requirements
  doc: "Check tool requirements for availability in\nbest practice Conda channels."
  type: boolean?
  inputBinding:
    prefix: --conda_requirements
- id: in_bio_containers
  doc: "Check best practice BioContainer namespaces\nfor a container definition applicable\
    \ for\nthis tool."
  type: boolean?
  inputBinding:
    prefix: --biocontainers
- id: in_testing
  doc: --fail_level [warn|error]
  type: string
  inputBinding:
    position: 0
- id: in_process_dot
  doc: -r, --recursive                 Recursively perform command for
  type: string
  inputBinding:
    position: 1
- id: in_subdirectories_dot
  doc: --urls                          Check validity of URLs in XML files
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- lint
