class: CommandLineTool
id: spring_cross.py.cwl
inputs:
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
- id: in_output
  doc: Output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_log
  doc: Log File
  type: File?
  inputBinding:
    prefix: --log
- id: in_zipped
  doc: "Zipped extension in PDB Database\n"
  type: string?
  inputBinding:
    prefix: --zipped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_cross.py
