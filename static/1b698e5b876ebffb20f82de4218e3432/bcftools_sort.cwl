class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bcftools_sort.cwl
inputs:
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
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string
  inputBinding:
    prefix: --output-type
- id: temp_dir
  doc: temporary files [/tmp/bcftools-sort.XXXXXX]
  type: string
  inputBinding:
    prefix: --temp-dir
- id: file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- sort
