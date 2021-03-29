class: CommandLineTool
id: spring_minz.py.cwl
inputs:
- id: in_target_list
  doc: Text file containing identifiers.
  type: File?
  inputBinding:
    prefix: --targetlist
- id: in_target_path
  doc: Directory containing `hhr` files
  type: File?
  inputBinding:
    prefix: --targetpath
- id: in_input_list
  doc: Text file containing identifiers.
  type: File?
  inputBinding:
    prefix: --inputlist
- id: in_input_path
  doc: Directory containing `hhr` files
  type: File?
  inputBinding:
    prefix: --inputpath
- id: in_cross
  doc: PDB Cross Reference
  type: string?
  inputBinding:
    prefix: --cross
- id: in_output
  doc: Output file containing min-Z scores
  type: long?
  inputBinding:
    prefix: --output
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
- id: in_min_score
  doc: "min-Z score threshold\n"
  type: long?
  inputBinding:
    prefix: --minscore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_minz.py
