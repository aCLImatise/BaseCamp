class: CommandLineTool
id: anvi_update_db_description.cwl
inputs:
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdwon syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs.\n"
  type: File?
  inputBinding:
    prefix: --description
- id: in_db
  doc: An anvi'o database.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-update-db-description
