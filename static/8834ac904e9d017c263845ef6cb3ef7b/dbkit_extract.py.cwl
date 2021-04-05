class: CommandLineTool
id: dbkit_extract.py.cwl
inputs:
- id: in_list
  doc: List of entries to be extracted
  type: string?
  inputBinding:
    prefix: --list
- id: in_index
  doc: Database Index file (ffindex)
  type: File?
  inputBinding:
    prefix: --index
- id: in_database
  doc: Database Data file (ffdata)
  type: File?
  inputBinding:
    prefix: --database
- id: in_output_index
  doc: Output Index file
  type: File?
  inputBinding:
    prefix: --outputindex
- id: in_output_database
  doc: Output Data file
  type: File?
  inputBinding:
    prefix: --outputdatabase
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_index
  doc: Output Index file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_index)
- id: out_output_database
  doc: Output Data file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_database)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dbkit_extract.py
