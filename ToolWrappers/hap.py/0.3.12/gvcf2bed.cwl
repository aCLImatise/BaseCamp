class: CommandLineTool
id: gvcf2bed.cwl
inputs:
- id: in_input_file
  doc: The input file
  type: File
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: '[ --output-file ] arg   The output file name (BED Format).'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg     Reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_optional_bed
  doc: '[ --target-region ] arg Optional bed file with target regions'
  type: boolean
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output-file ] arg   The output file name (BED Format).'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- gvcf2bed
