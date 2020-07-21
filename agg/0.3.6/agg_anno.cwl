class: CommandLineTool
id: ../../../agg_anno.cwl
inputs:
- id: include
  doc: "filters to apply eg. -i 'QUAL>=10 && DP<100000 && HWE<10' "
  type: boolean
  inputBinding:
    prefix: --include
- id: regions
  doc: 'a set of variants that are trusted (eg. 1000G) '
  type: boolean
  inputBinding:
    prefix: --regions
- id: output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
- id: output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed'
  type: string
  inputBinding:
    prefix: --output-type
- id: input_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- anno
