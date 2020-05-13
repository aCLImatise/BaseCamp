class: CommandLineTool
id: agat_sp_manage_UTRs.pl.cwl
inputs:
- id: both
  doc: The threshold of the option <n> will be applied on genes where the number of
    UTR exon (3' and 5' additioned) is over it.
  type: string
  inputBinding:
    prefix: --both
- id: plot
  doc: Allows to create an histogram in pdf of UTR sizes distribution.
  type: string
  inputBinding:
    prefix: --plot
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
- agat_sp_manage_UTRs.pl
