class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_filter_feature_by_attribute_value.pl.cwl
inputs:
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: verbose_option_debugging
  doc: Verbose option for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_feature_by_attribute_value.pl
