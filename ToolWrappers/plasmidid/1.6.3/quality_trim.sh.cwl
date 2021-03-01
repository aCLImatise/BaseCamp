class: CommandLineTool
id: quality_trim.sh.cwl
inputs:
- id: in_one
  doc: file (mandatory)
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: file (mandatory)
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_where_trimmomatic_installed
  doc: 'where trimmomatic is installed, default: /opt/Trimmomatic/'
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_remove_default_truseqpefa
  doc: 'to remove, default: TruSeq3-PE.fa'
  type: long?
  inputBinding:
    prefix: -a
- id: in_directory_optional
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_name
  doc: name
  type: File?
  inputBinding:
    prefix: -f
- id: in_length_trimmed_reads
  doc: length of trimmed reads (default 40)
  type: long?
  inputBinding:
    prefix: -l
- id: in_name_mandatory
  doc: name (mandatory)
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_memmory_gb_default
  doc: memmory (Gb), default 8
  type: long?
  inputBinding:
    prefix: -M
- id: in__default
  doc: ', default 1'
  type: long?
  inputBinding:
    prefix: -T
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
- quality_trim.sh
