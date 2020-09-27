class: CommandLineTool
id: rename_fastq_tag.cwl
inputs:
- id: in_fast_q
  doc: (string)        input fastq file.
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_string_tag_find
  doc: (string)        tag to find for cutting read name
  type: boolean
  inputBinding:
    prefix: -t
- id: in_string_add_tag
  doc: (string)        add this tag to cut name
  type: boolean
  inputBinding:
    prefix: -T
- id: in_log
  doc: (string)        log file.
  type: boolean
  inputBinding:
    prefix: -log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rename_fastq_tag
