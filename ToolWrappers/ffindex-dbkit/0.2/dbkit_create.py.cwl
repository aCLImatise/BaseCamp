class: CommandLineTool
id: dbkit_create.py.cwl
inputs:
- id: in_list
  doc: List of entries
  type: string?
  inputBinding:
    prefix: --list
- id: in_url
  doc: Source Url
  type: string?
  inputBinding:
    prefix: --url
- id: in_path
  doc: Path to files
  type: File?
  inputBinding:
    prefix: --path
- id: in_id_length
  doc: Format Identifier Length (integer)
  type: long?
  inputBinding:
    prefix: --idlength
- id: in_id_case
  doc: Format Identifier Case (lower, upper)
  type: string?
  inputBinding:
    prefix: --idcase
- id: in_id_extension
  doc: Format Identifier Suffix
  type: string?
  inputBinding:
    prefix: --idextension
- id: in_id_prefix
  doc: Format Identifier Prefix
  type: string?
  inputBinding:
    prefix: --idprefix
- id: in_index
  doc: Output Database Index
  type: string?
  inputBinding:
    prefix: --index
- id: in_database
  doc: Output Database
  type: string?
  inputBinding:
    prefix: --database
- id: in_log
  doc: Log file
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dbkit_create.py
