class: CommandLineTool
id: parsec_histories_import_history.cwl
inputs:
- id: in_file_path
  doc: "Path to exported history archive on disk. :type url: str\n:param url: URL\
    \ for an exported history archive"
  type: File?
  inputBinding:
    prefix: --file_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- histories
- import_history
