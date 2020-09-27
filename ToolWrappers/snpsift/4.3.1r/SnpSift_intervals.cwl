class: CommandLineTool
id: SnpSift_intervals.cwl
inputs:
- id: in_vcf_file_default
  doc: ':     VCF file. Default STDIN'
  type: File
  inputBinding:
    prefix: -i
- id: in_exclude_vcf_entries
  doc: ':     Exclude VCF entries in intervals'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_intervals
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_ndot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- intervals
