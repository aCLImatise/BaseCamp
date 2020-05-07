class: CommandLineTool
id: agat_sq_list_attributes.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: p
  doc: 'primary tag option, case insensitive, list. Allow to specied the feature types
    that will be handled. You can specified a specific feature by given its primary
    tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature
    of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default
    all feature are taking in account. fill the option by the value "all" will have
    the same behaviour.'
  type: string
  inputBinding:
    prefix: -p
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
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
- agat_sq_list_attributes.pl
