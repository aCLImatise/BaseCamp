class: CommandLineTool
id: ../../../agat_sp_flag_short_introns.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: -reffile
- id: intron_size
  doc: Minimum intron size, default 10. All genes with an intron < of this size will
    be flagged with the pseudo attribute (the value will be the size of the smallest
    intron found within the incriminated gene)
  type: string
  inputBinding:
    prefix: --intron_size
- id: output
  doc: Output gff3 file where the result will be printed.
  type: string
  inputBinding:
    prefix: --output
- id: bolean_verbose_debugging
  doc: Bolean. Verbose for debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_flag_short_introns.pl
