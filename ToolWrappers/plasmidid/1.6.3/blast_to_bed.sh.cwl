class: CommandLineTool
id: blast_to_bed.sh.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_identity_cutoff_default
  doc: identity cutoff (0 - 100), default 90
  type: long?
  inputBinding:
    prefix: -b
- id: in_length_percentage_cutoff
  doc: length percentage cutoff (0 - 100), default 20, use 90 for genes
  type: long?
  inputBinding:
    prefix: -l
- id: in_length_alignment_default
  doc: length alignment cutoff, default 0, use 200 or 500 for contigs
  type: long?
  inputBinding:
    prefix: -L
- id: in_directory_optional_default
  doc: directory (optional). By default the file is replaced in the same location
  type: File?
  inputBinding:
    prefix: -o
- id: in_var_5
  doc: chraracter delimiter, default "_"
  type: string?
  inputBinding:
    prefix: -q
- id: in_field_retrieve_left
  doc: field to retrieve (l=left, r=right), default left
  type: string?
  inputBinding:
    prefix: -Q
- id: in_var_7
  doc: chraracter delimiter, default "_"
  type: string?
  inputBinding:
    prefix: -d
- id: in_field_retrieve_right
  doc: field to retrieve (l=left, r=right), default right
  type: string?
  inputBinding:
    prefix: -D
- id: in_mode
  doc: mode
  type: string?
  inputBinding:
    prefix: -I
- id: in_outputs_one_entry
  doc: Outputs only one query entry per database entry
  type: string?
  inputBinding:
    prefix: -u
- id: in_mode_one_query
  doc: mode with delimiter. Outputs only one delimited query per database entry
  type: string?
  inputBinding:
    prefix: -U
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- blast_to_bed.sh
