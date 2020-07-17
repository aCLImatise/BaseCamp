class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_separate_by_record_type.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: output
  doc: Output folder. If no output folder provided, the default name will be <split_result>.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_separate_by_record_type.pl
