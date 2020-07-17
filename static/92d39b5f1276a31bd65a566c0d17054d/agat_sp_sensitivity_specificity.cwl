class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_sensitivity_specificity.pl.cwl
inputs:
- id: gff_one
  doc: Input GTF/GFF file 1.
  type: boolean
  inputBinding:
    prefix: -gff1
- id: gff_two
  doc: Input GTF/GFF file 2.
  type: boolean
  inputBinding:
    prefix: -gff2
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: verbose_option_debug
  doc: Verbose option for debug purposes.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_sensitivity_specificity.pl
