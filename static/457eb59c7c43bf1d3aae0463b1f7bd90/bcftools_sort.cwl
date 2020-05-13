class: CommandLineTool
id: bcftools_sort.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: max_mem
  doc: '[kMG]    maximum memory to use [768M]'
  type: double
  inputBinding:
    prefix: --max-mem
- id: output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
- id: output_type
  doc: '<b|u|z|v>   b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v:
    uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: temp_dir
  doc: temporary files [/tmp/bcftools-sort.XXXXXX]
  type: string
  inputBinding:
    prefix: --temp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- sort
