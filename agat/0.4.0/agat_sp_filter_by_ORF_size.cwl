class: CommandLineTool
id: ../../../agat_sp_filter_by_ORF_size.pl.cwl
inputs:
- id: verbose_useful_debugging
  doc: Verbose. Useful for debugging purpose. Bolean
  type: boolean
  inputBinding:
    prefix: -v
- id: outfile
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --outfile
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_by_ORF_size.pl
