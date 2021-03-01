class: CommandLineTool
id: sketchy_online_watch.cwl
inputs:
- id: in_directory
  doc: Path to directory to watch [required]  [required]
  type: File?
  inputBinding:
    prefix: --directory
- id: in_regex
  doc: Regex to identify read files [.*\.fastq$]
  type: string?
  inputBinding:
    prefix: --regex
- id: in_now
  doc: Disable waiting for file completion.
  type: boolean?
  inputBinding:
    prefix: --now
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- online
- watch
