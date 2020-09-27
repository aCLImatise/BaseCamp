class: CommandLineTool
id: blobtools_nodesdb.cwl
inputs:
- id: in_nodes
  doc: NCBI nodes.dmp file.
  type: File
  inputBinding:
    prefix: --nodes
- id: in_names
  doc: NCBI names.dmp file.
  type: File
  inputBinding:
    prefix: --names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blobtools
- nodesdb
