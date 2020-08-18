class: CommandLineTool
id: ../../../hailctl_dev_deploy.cwl
inputs:
- id: branch
  doc: Fully-qualified branch, e.g., hail-is/hail:feature.
  type: string
  inputBinding:
    prefix: --branch
- id: steps
  doc: Comma-separated list of steps to run.
  type: string
  inputBinding:
    prefix: --steps
- id: open
  doc: Open the deploy batch page in a web browser.
  type: boolean
  inputBinding:
    prefix: --open
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- deploy
