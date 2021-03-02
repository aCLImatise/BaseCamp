class: CommandLineTool
id: vcfsample2info.cwl
inputs:
- id: in_field
  doc: Add information about this field in samples to INFO column
  type: boolean?
  inputBinding:
    prefix: --field
- id: in_info
  doc: Store the computed statistic in this info field
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_average
  doc: Take the mean of samples for field (default)
  type: boolean?
  inputBinding:
    prefix: --average
- id: in_median
  doc: Use the median
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_min
  doc: Use the min
  type: boolean?
  inputBinding:
    prefix: --min
- id: in_max
  doc: Use the max
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfsample2info
