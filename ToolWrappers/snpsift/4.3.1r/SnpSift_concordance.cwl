class: CommandLineTool
id: SnpSift_concordance.cwl
inputs:
- id: in_only_use_ids
  doc: ': Only use sample IDs in file (format: one sample ID per line).'
  type: File?
  inputBinding:
    prefix: -s
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_concordance
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sequencing_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- concordance
