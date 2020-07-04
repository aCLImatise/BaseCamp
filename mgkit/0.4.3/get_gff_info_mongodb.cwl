class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_gff_info_mongodb.cwl
inputs:
- id: taxonomy
  doc: Taxonomy used to populate the lineage
  type: File
  inputBinding:
    prefix: --taxonomy
- id: no_cache
  doc: No cache for the lineage function
  type: boolean
  inputBinding:
    prefix: --no-cache
- id: indent
  doc: If used, the json will be written in a human readble form
  type: long
  inputBinding:
    prefix: --indent
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- mongodb
