class: CommandLineTool
id: spring_model.py.cwl
inputs:
- id: in_a_hhr
  doc: First HHR target file result
  type: File?
  inputBinding:
    prefix: --a_hhr
- id: in_b_hhr
  doc: Second HHR target file result
  type: File?
  inputBinding:
    prefix: --b_hhr
- id: in_index
  doc: PDB Database Index file (ffindex)
  type: File?
  inputBinding:
    prefix: --index
- id: in_database
  doc: PDB Database files (ffdata)
  type: string?
  inputBinding:
    prefix: --database
- id: in_cross
  doc: PDB Cross Reference
  type: string?
  inputBinding:
    prefix: --cross
- id: in_output
  doc: Output model file
  type: File?
  inputBinding:
    prefix: --output
- id: in_w_energy
  doc: Weight Energy term
  type: string?
  inputBinding:
    prefix: --wenergy
- id: in_min_score
  doc: Minimum min-Z score threshold
  type: long?
  inputBinding:
    prefix: --minscore
- id: in_max_tries
  doc: Maximum number of templates
  type: long?
  inputBinding:
    prefix: --maxtries
- id: in_max_clashes
  doc: Maximum fraction of clashes
  type: long?
  inputBinding:
    prefix: --maxclashes
- id: in_show_template
  doc: "Add reference template to model structure\n"
  type: string?
  inputBinding:
    prefix: --showtemplate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output model file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_model.py
