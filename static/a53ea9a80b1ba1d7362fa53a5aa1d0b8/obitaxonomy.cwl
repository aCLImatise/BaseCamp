class: CommandLineTool
id: obitaxonomy.cwl
inputs:
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
outputs: []
cwlVersion: v1.1
baseCommand:
- obitaxonomy
