class: CommandLineTool
id: ../../../traitar_remove.cwl
inputs:
- id: in_keep
  doc: "instead of remove the given phenotypes, keep them and forget the\nrest\n"
  type: boolean
  inputBinding:
    prefix: --keep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- remove
