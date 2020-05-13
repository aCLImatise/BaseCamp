class: CommandLineTool
id: agat_sp_list_short_introns.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: -reffile
- id: size
  doc: Minimum intron size accepted in nucleotide. All introns under this size will
    be reported. Default value = 10.
  type: string
  inputBinding:
    prefix: --size
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_list_short_introns.pl
