class: CommandLineTool
id: biopython.convert.cwl
inputs:
- id: in_records_seperate_files
  doc: records into seperate files
  type: string?
  inputBinding:
    prefix: -s
- id: in_select_records_return
  doc: to select records. Must return list of SeqIO records. Root is list of input
    SeqIO records.
  type: File?
  inputBinding:
    prefix: -q
- id: in_details_records_conversion
  doc: out details of records during conversion
  type: string?
  inputBinding:
    prefix: -i
- id: in_version_and_exit
  doc: version and exit
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biopython.convert:1.2.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- biopython.convert
