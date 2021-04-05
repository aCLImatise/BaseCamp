class: CommandLineTool
id: gff_to_bed.sh.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_optional_default
  doc: directory (optional). By default the file is placed in the same location as
    input
  type: File?
  inputBinding:
    prefix: -o
- id: in_supplied_word_cds
  doc: a supplied word in cds
  type: string?
  inputBinding:
    prefix: -C
- id: in_locus_tag_cds
  doc: locus tag in cds
  type: string?
  inputBinding:
    prefix: -L
- id: in_chraracter_delimiter_default
  doc: chraracter delimiter, default "_"
  type: string?
  inputBinding:
    prefix: -q
- id: in_field_retrieve_lleft
  doc: field to retrieve (l=left, r=right), default right
  type: string?
  inputBinding:
    prefix: -Q
- id: in_mode_remove_duplicates
  doc: mode. Remove duplicates
  type: string?
  inputBinding:
    prefix: -u
- id: in_ad_end_outputted
  doc: to ad at the end of the outputted file
  type: File?
  inputBinding:
    prefix: -s
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- gff_to_bed.sh
