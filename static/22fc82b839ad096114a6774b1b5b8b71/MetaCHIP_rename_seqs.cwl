class: CommandLineTool
id: MetaCHIP_rename_seqs.cwl
inputs:
- id: in_in
  doc: input sequence file
  type: File?
  inputBinding:
    prefix: -in
- id: in_inc_suffix
  doc: rename sequences by incrementally adding suffix to file
  type: boolean?
  inputBinding:
    prefix: -inc_suffix
- id: in_sep_out
  doc: 'separator for output sequences, default: same as sep_in'
  type: string?
  inputBinding:
    prefix: -sep_out
- id: in_number_columns_keep
  doc: the number of columns to keep
  type: long?
  inputBinding:
    prefix: -n
- id: in_prefix
  doc: add prefix to sequence
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_file_extension
  doc: file extension
  type: File?
  inputBinding:
    prefix: -x
- id: in_name
  doc: -sep_in SEP_IN    separator for input sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- rename_seqs
