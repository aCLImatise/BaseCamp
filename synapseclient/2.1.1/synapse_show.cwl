class: CommandLineTool
id: ../../../synapse_show.cwl
inputs:
- id: in_limit_search
  doc: "Synapse ID of a container such as project or folder to\nlimit search for provenance\
    \ files.\n"
  type: Directory
  inputBinding:
    prefix: --limitSearch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- show
