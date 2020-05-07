class: CommandLineTool
id: singularity_pull.cwl
inputs:
- id: name
  doc: Specify a custom container name (first priority)
  type: boolean
  inputBinding:
    prefix: --name
- id: commit
  doc: container based on Github commit (second priority)
  type: string
  inputBinding:
    prefix: --commit
- id: hash
  doc: Name container based on file hash (second priority)
  type: boolean
  inputBinding:
    prefix: --hash
- id: force
  doc: overwrite an image file if it exists
  type: boolean
  inputBinding:
    prefix: --force
- id: size
  doc: Specify a size for an operation in MiB, i.e. 1024*1024B (default 768MiB)
  type: boolean
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- pull
