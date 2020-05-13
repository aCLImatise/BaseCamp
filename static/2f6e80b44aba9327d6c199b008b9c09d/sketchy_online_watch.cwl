class: CommandLineTool
id: sketchy_online_watch.cwl
inputs:
- id: directory
  doc: Path to directory to watch [required]  [required]
  type: File
  inputBinding:
    prefix: --directory
- id: regex
  doc: Regex to identify read files [.*\.fastq$]
  type: string
  inputBinding:
    prefix: --regex
- id: now
  doc: Disable waiting for file completion.
  type: boolean
  inputBinding:
    prefix: --now
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- watch
