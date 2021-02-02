class: CommandLineTool
id: bcftools_sort.cwl
inputs:
- id: in_max_mem
  doc: '[kMG]    maximum memory to use [768M]'
  type: double
  inputBinding:
    prefix: --max-mem
- id: in_output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string
  inputBinding:
    prefix: --output-type
- id: in_temp_dir
  doc: temporary files [/tmp/bcftools-sort.XXXXXX]
  type: string
  inputBinding:
    prefix: --temp-dir
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- bcftools
- sort
