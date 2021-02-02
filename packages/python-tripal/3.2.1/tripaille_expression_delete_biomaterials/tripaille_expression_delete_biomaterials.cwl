class: CommandLineTool
id: tripaille_expression_delete_biomaterials.cwl
inputs:
- id: in_names
  doc: JSON list of biomaterial names to delete. (optional)
  type: string
  inputBinding:
    prefix: --names
- id: in_organism_id
  doc: Organism id from which to delete biomaterials (optional)
  type: string
  inputBinding:
    prefix: --organism_id
- id: in_analysis_id
  doc: Analysis id from which to delete biomaterials (optional)
  type: string
  inputBinding:
    prefix: --analysis_id
- id: in_job_name
  doc: Name of the job (optional)
  type: string
  inputBinding:
    prefix: --job_name
- id: in_no_wait
  doc: Return immediately without waiting for job completion
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: in_status
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- delete_biomaterials
