class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_compare_two_annotations.pl.cwl
inputs:
- id: gff_one
  doc: Input GTF/GFF file1.
  type: boolean
  inputBinding:
    prefix: -gff1
- id: gff_two
  doc: Input GTF/GFF file2.
  type: boolean
  inputBinding:
    prefix: -gff2
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: verbose_option_make
  doc: Verbose option, make it easier to follow what is going on for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_compare_two_annotations.pl
