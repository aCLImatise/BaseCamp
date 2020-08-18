class: CommandLineTool
id: ../../../agat_convert_minimap2_bam2gff.pl.cwl
inputs:
- id: input
  doc: Input file in sam (.sam extension) or bam (.bam extension) format.
  type: string
  inputBinding:
    prefix: --input
- id: bam
  doc: To force to use the input file as sam file.
  type: string
  inputBinding:
    prefix: --bam
- id: sam
  doc: To force to use the input file as sam file.
  type: string
  inputBinding:
    prefix: --sam
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: agat_convert_sp_minimap_two_bamtwogffdotpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_minimap2_bam2gff.pl
