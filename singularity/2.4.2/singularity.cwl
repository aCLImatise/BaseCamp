class: CommandLineTool
id: singularity.cwl
inputs:
- id: debug
  doc: Print debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: silent
  doc: Only print errors
  type: boolean
  inputBinding:
    prefix: --silent
- id: quiet
  doc: Suppress all normal output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Increase verbosity +1
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sh_debug
  doc: shell wrapper debugging information
  type: string
  inputBinding:
    prefix: --sh-debug
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
