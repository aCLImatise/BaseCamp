class: CommandLineTool
id: parsec_histories_copy_content.cwl
inputs:
- id: in_source
  doc: "Source of the content to be copied: 'hda' (for a history\ndataset, the default),\
    \ 'hdca' (for a dataset collection),\n'library' (for a library dataset) or 'library_folder'\
    \ (for\nall datasets in a library folder).  [default: hda]"
  type: Directory?
  inputBinding:
    prefix: --source
- id: in_history_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_content_id
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- copy_content
