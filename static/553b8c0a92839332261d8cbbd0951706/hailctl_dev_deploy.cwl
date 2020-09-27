class: CommandLineTool
id: hailctl_dev_deploy.cwl
inputs:
- id: in_branch
  doc: Fully-qualified branch, e.g., hail-is/hail:feature.
  type: string
  inputBinding:
    prefix: --branch
- id: in_steps
  doc: Comma-separated list of steps to run.
  type: string
  inputBinding:
    prefix: --steps
- id: in_open
  doc: Open the deploy batch page in a web browser.
  type: boolean
  inputBinding:
    prefix: --open
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- deploy
