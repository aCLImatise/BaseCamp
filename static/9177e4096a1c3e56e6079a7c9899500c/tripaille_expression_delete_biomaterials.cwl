class: CommandLineTool
id: tripaille_expression_delete_biomaterials.cwl
inputs:
- id: names
  doc: JSON list of biomaterial names to delete. (optional)
  type: string
  inputBinding:
    prefix: --names
- id: organism_id
  doc: Organism id from which to delete biomaterials (optional)
  type: string
  inputBinding:
    prefix: --organism_id
- id: analysis_id
  doc: Analysis id from which to delete biomaterials (optional)
  type: string
  inputBinding:
    prefix: --analysis_id
- id: job_name
  doc: Name of the job (optional)
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
- expression
- delete_biomaterials
