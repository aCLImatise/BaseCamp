class: CommandLineTool
id: nf_core_lint.cwl
inputs:
- id: in_release
  doc: Execute additional checks for release-ready
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_markdown
  doc: File to write linting results to (Markdown)
  type: File?
  inputBinding:
    prefix: --markdown
- id: in_json
  doc: File to write linting results to (JSON)
  type: File?
  inputBinding:
    prefix: --json
- id: in_workflows_dot
  doc: -p, --show-passed      Show passing tests on the command line.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- lint
