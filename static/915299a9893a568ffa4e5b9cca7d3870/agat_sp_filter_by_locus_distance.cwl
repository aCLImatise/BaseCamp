class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_filter_by_locus_distance.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: dist
  doc: The minimum inter-loci distance to allow. No default (will not apply filter
    by default).
  type: string
  inputBinding:
    prefix: --dist
- id: add_flag
  doc: Instead of filter the result into two output files, write only one and add
    the flag <low_dist> in the gff.(tag = Lvalue or tag = Rvalue where L is left and
    R right and the value is the distance with accordingle the left or right locus)
  type: string
  inputBinding:
    prefix: --add_flag
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
- agat_sp_filter_by_locus_distance.pl
