class: CommandLineTool
id: spring_map.py.cwl
inputs:
- id: in_list
  doc: List of template entries `PDB_CHAIN`
  type: string?
  inputBinding:
    prefix: --list
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
  doc: Cross reference (unmapped)
  type: string?
  inputBinding:
    prefix: --cross
- id: in_output
  doc: Cross reference
  type: string?
  inputBinding:
    prefix: --output
- id: in_log
  doc: Log File
  type: File?
  inputBinding:
    prefix: --log
- id: in_evalue
  doc: e-Value threshold
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_zipped
  doc: "Zipped extension in PDB Database\n"
  type: string?
  inputBinding:
    prefix: --zipped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_map.py
