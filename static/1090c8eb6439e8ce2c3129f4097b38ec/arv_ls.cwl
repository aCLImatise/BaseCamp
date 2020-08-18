class: CommandLineTool
id: ../../../arv_ls.cwl
inputs:
- id: retries
  doc: Maximum number of times to retry server requests that encounter temporary failures
    (e.g., server down). Default 3.
  type: string
  inputBinding:
    prefix: --retries
- id: list_file_sizes
  doc: List file sizes, in KiB.
  type: boolean
  inputBinding:
    prefix: -s
- id: locator
  doc: Collection UUID or locator, optionally with a subdir path.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-ls
