class: CommandLineTool
id: ChIPAssoc.cwl
inputs:
- id: in_bed
  doc: "BED file of genomic coordinates (e.g. ChIP-Seq peaks).\nThe center of each\
    \ peak will be used to compute the\ndistance from a gene."
  type: File
  inputBinding:
    prefix: --bed
- id: in_db
  doc: "Gene annotation table. This can be a sqlite3 local db\nfile, BED file or genome\
    \ version of UCSC. The BED file\nmust have an extension of '.bed'"
  type: File
  inputBinding:
    prefix: --db
- id: in_g_set
  doc: "Gene set to see the association with the genomic\ncoordinates given through\
    \ -b. Multiple gene sets can\nbe given by repeatedly using this option (e.g. -g\n\
    geneset1.txt -g geneset2.txt -g geneset3.txt). Genes\nmust be given in a TXT file\
    \ each line of which has a\nrefseq accession ID or an official gene symbol (i.e.\
    \ a\nsingle-column TXT file)."
  type: File
  inputBinding:
    prefix: --gset
- id: in_min
  doc: "The lower limit of the distance to consider in\nassociation analysis (in kb).\
    \ Note that the lower and\nupper limits must be reasonably apart to obtain a\n\
    meaningful result. By default 0kb."
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: "The upper limit of the distance to consider in\nassociation analysis (in kb).\
    \ Note that the lower and\nupper limits must be reasonably apart to obtain a\n\
    meaningful result. By default 200kb."
  type: long
  inputBinding:
    prefix: --max
- id: in_name
  doc: "Experiment name. This will be used to name the output\nfile. If an experiment\
    \ name is not given, input BED\nfile name will be used instead."
  type: File
  inputBinding:
    prefix: --name
- id: in_lab
  doc: "Label for each gene set. Likewise, multiple gene set\nlabels can be given\
    \ by repeatedly using this option\n(e.g. -l label1 -l label2 -l label3). If labels\
    \ are\nnot given, 'gene set' will be used by default."
  type: long
  inputBinding:
    prefix: --lab
- id: in_rbg
  doc: "Background gene set. If a set of genes is given using\nthis option, the gene\
    \ set will be used as background\nor null set when running KS test. Otherwise,\
    \ all\nrefseq genes will be used as background. Background\ngenes must be given\
    \ in a TXT file each line of which\nhas a refseq accession ID or an offical gene\
    \ symbol\n(i.e. a single-column TXT file)."
  type: File
  inputBinding:
    prefix: --rbg
- id: in_g_name_two
  doc: "If this switch is on, gene or transcript IDs in files\ngiven through -g will\
    \ be considered as official gene\nsymbols.\n"
  type: boolean
  inputBinding:
    prefix: --gname2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ChIPAssoc
