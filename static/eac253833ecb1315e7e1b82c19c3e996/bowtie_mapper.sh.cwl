class: CommandLineTool
id: bowtie_mapper.sh.cwl
inputs:
- id: in_i
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_o
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_to_map_fasta
  doc: to map (.fasta)
  type: string?
  inputBinding:
    prefix: -d
- id: in_name
  doc: name
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_one
  doc: corresponding to paired-end R1
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: corresponding to paired-end R2
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_index_optional_default
  doc: index for bowtie_build (optional). Default value 1. for quicker indexing use
    higher number
  type: long?
  inputBinding:
    prefix: -f
- id: in_off_by_default
  doc: (off by default)
  type: string?
  inputBinding:
    prefix: -a
- id: in_of_threads
  doc: of threads
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
- bowtie_mapper.sh
