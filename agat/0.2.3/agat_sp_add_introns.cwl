class: CommandLineTool
id: agat_sp_add_introns.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: -reffile
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
- agat_sp_add_introns.pl
