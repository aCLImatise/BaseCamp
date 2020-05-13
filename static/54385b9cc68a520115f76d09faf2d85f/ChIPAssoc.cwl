class: CommandLineTool
id: ChIPAssoc.cwl
inputs:
- id: bed
  doc: BED file of genomic coordinates (e.g. ChIP-Seq peaks). The center of each peak
    will be used to compute the distance from a gene.
  type: string
  inputBinding:
    prefix: --bed
- id: db
  doc: Gene annotation table. This can be a sqlite3 local db file, BED file or genome
    version of UCSC. The BED file must have an extension of '.bed'
  type: string
  inputBinding:
    prefix: --db
- id: g_set
  doc: Gene set to see the association with the genomic coordinates given through
    -b. Multiple gene sets can be given by repeatedly using this option (e.g. -g geneset1.txt
    -g geneset2.txt -g geneset3.txt). Genes must be given in a TXT file each line
    of which has a refseq accession ID or an official gene symbol (i.e. a single-column
    TXT file).
  type: string
  inputBinding:
    prefix: --gset
- id: min
  doc: The lower limit of the distance to consider in association analysis (in kb).
    Note that the lower and upper limits must be reasonably apart to obtain a meaningful
    result. By default 0kb.
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: The upper limit of the distance to consider in association analysis (in kb).
    Note that the lower and upper limits must be reasonably apart to obtain a meaningful
    result. By default 200kb.
  type: long
  inputBinding:
    prefix: --max
- id: name
  doc: Experiment name. This will be used to name the output file. If an experiment
    name is not given, input BED file name will be used instead.
  type: string
  inputBinding:
    prefix: --name
- id: lab
  doc: Label for each gene set. Likewise, multiple gene set labels can be given by
    repeatedly using this option (e.g. -l label1 -l label2 -l label3). If labels are
    not given, 'gene set' will be used by default.
  type: string
  inputBinding:
    prefix: --lab
- id: rbg
  doc: Background gene set. If a set of genes is given using this option, the gene
    set will be used as background or null set when running KS test. Otherwise, all
    refseq genes will be used as background. Background genes must be given in a TXT
    file each line of which has a refseq accession ID or an offical gene symbol (i.e.
    a single-column TXT file).
  type: string
  inputBinding:
    prefix: --rbg
- id: gname2
  doc: If this switch is on, gene or transcript IDs in files given through -g will
    be considered as official gene symbols.
  type: boolean
  inputBinding:
    prefix: --gname2
outputs: []
cwlVersion: v1.1
baseCommand:
- ChIPAssoc
