class: CommandLineTool
id: tripaille_entity_publish.cwl
inputs:
- id: types
  doc: 'List of entity types to be published (e.g. Gene mRNA, default: all)'
  type: string
  inputBinding:
    prefix: --types
- id: job_name
  doc: Name of the job
  type: string
  inputBinding:
    prefix: --job_name
- id: no_wait
  doc: Return immediately without waiting for job completion
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- publish
