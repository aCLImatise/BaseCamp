class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_update_db_description.cwl
inputs:
- id: description
  doc: A plain text file that contains some description about the project. You can
    use Markdwon syntax. The description text will be rendered and shown in all relevant
    interfaces, including the anvi'o interactive interface, or anvi'o summary outputs.
  type: string
  inputBinding:
    prefix: --description
- id: db
  doc: An anvi'o database.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-update-db-description
