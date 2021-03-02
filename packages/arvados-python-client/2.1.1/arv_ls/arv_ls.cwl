class: CommandLineTool
id: arv_ls.cwl
inputs:
- id: in_retries
  doc: "Maximum number of times to retry server requests that\nencounter temporary\
    \ failures (e.g., server down). Default\n3."
  type: long?
  inputBinding:
    prefix: --retries
- id: in_list_file_sizes
  doc: List file sizes, in KiB.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_locator
  doc: Collection UUID or locator, optionally with a subdir
  type: string
  inputBinding:
    position: 0
- id: in_path_dot
  doc: 'optional arguments:'
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arvados-python-client:2.1.1--py_0
cwlVersion: v1.1
baseCommand:
- arv-ls
