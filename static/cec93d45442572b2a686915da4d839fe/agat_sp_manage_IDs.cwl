class: CommandLineTool
id: agat_sp_manage_IDs.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: gap
  doc: Integer. Increment the next gene (level1 feature) suffix with this value. Defauft
    0.
  type: boolean
  inputBinding:
    prefix: --gap
- id: ensembl
  doc: 'Boolean - For an ID Ensembl like (e.g PREFIXG00000000022). The ID is built
    as follow: $opt_prefix.$letterCode.0*.Number where the number of 0 is adapted
    in order to have 11 digits.'
  type: boolean
  inputBinding:
    prefix: --ensembl
- id: prefix
  doc: String. Add a specific prefix to the ID. By defaut if will be the feature type
    (3rd column).
  type: boolean
  inputBinding:
    prefix: --prefix
- id: type_dependent
  doc: 'Boolean - Activate type_dependent numbering. The number is depedendent of
    the feature type. i.e instead of: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 - .
    ID=gene1 NbV1Ch01 AUGUSTUS mRNA 97932 99714 0.06 - . ID=mRNA2 NbV1Ch01 AUGUSTUS
    exon 97932 98571 . - . ID=exon3 NbV1Ch01 AUGUSTUS exon 98679 98844 . - . ID=exon4
    You will get: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 - . ID=gene1 NbV1Ch01 AUGUSTUS
    mRNA 97932 99714 0.06 - . ID=mRNA1 NbV1Ch01 AUGUSTUS exon 97932 98571 . - . ID=exon1
    NbV1Ch01 AUGUSTUS exon 98679 98844 . - . ID=exon2'
  type: boolean
  inputBinding:
    prefix: --type_dependent
- id: tair
  doc: 'Boolean. Tair like Output: NbV1Ch01 TAIR10 gene 5928 8737 . - . ID=AT1G01020
    NbV1Ch01 TAIR10 mRNA 5928 8737 . - . ID=AT1G01020.1 NbV1Ch01 TAIR10 exon 5928
    8737 . - . ID=AT1G01020.1-exon1'
  type: boolean
  inputBinding:
    prefix: --tair
- id: nb
  doc: Integer. Start numbering to this value. Default 1.
  type: boolean
  inputBinding:
    prefix: --nb
- id: p
  doc: 'primary tag option, case insensitive, list. Allow to specied the feature types
    that will be handled. You can specified a specific feature by given its primary
    tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature
    of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default
    all feature are taken into account. fill the option by the value "all" will have
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
- agat_sp_manage_IDs.pl
