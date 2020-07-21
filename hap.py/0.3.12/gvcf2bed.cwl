class: CommandLineTool
id: ../../../gvcf2bed.cwl
inputs:
- id: input_file
  doc: The input file
  type: string
  inputBinding:
    prefix: --input-file
- id: arg_output_file
  doc: '[ --output-file ] arg   The output file name (BED Format).'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_fasta_file
  doc: '[ --reference ] arg     Reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_optional_bed
  doc: '[ --target-region ] arg Optional bed file with target regions'
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- gvcf2bed
