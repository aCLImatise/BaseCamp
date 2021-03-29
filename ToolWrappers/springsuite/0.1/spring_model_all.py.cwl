class: CommandLineTool
id: spring_model_all.py.cwl
inputs:
- id: in_pairs
  doc: "Interaction table e.g. from min-Z evaluation\n(2-columns)"
  type: long?
  inputBinding:
    prefix: --pairs
- id: in_hhr_index
  doc: HHR Index database file (ffindex)
  type: File?
  inputBinding:
    prefix: --hhr_index
- id: in_hhr_database
  doc: HHR Database file (ffdata)
  type: File?
  inputBinding:
    prefix: --hhr_database
- id: in_index
  doc: PDB Database Index file (ffindex)
  type: File?
  inputBinding:
    prefix: --index
- id: in_database
  doc: PDB Database file (ffdata)
  type: File?
  inputBinding:
    prefix: --database
- id: in_cross
  doc: PDB Cross Reference
  type: string?
  inputBinding:
    prefix: --cross
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_output_path
  doc: Path to output directory
  type: File?
  inputBinding:
    prefix: --outputpath
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
- id: out_output_path
  doc: Path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_model_all.py
