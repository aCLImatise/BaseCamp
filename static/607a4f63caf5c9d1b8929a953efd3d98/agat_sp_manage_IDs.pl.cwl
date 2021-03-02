class: CommandLineTool
id: agat_sp_manage_IDs.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_gap
  doc: "Integer - Increment the next gene (level1 feature) suffix with\nthis value.\
    \ Defauft 0."
  type: boolean?
  inputBinding:
    prefix: --gap
- id: in_ensembl
  doc: "Boolean - For an ID Ensembl like (e.g PREFIXG00000000022). The\nID is built\
    \ as follow: $opt_prefix.$letterCode.0*.Number where\nthe number of 0 is adapted\
    \ in order to have 11 digits."
  type: boolean?
  inputBinding:
    prefix: --ensembl
- id: in_prefix
  doc: "String - Add a specific prefix to the ID. By defaut if will be\nthe feature\
    \ type (3rd column)."
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_type_dependent
  doc: "Boolean - Activate type_dependent numbering. The number is\ndepedendent of\
    \ the feature type. i.e instead of: NbV1Ch01\nAUGUSTUS gene 97932 99714 0.06 -\
    \ . ID=gene1 NbV1Ch01 AUGUSTUS\nmRNA 97932 99714 0.06 - . ID=mRNA2 NbV1Ch01 AUGUSTUS\
    \ exon 97932\n98571 . - . ID=exon3 NbV1Ch01 AUGUSTUS exon 98679 98844 . - .\n\
    ID=exon4 You will get: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 -\n. ID=gene1 NbV1Ch01\
    \ AUGUSTUS mRNA 97932 99714 0.06 - . ID=mRNA1\nNbV1Ch01 AUGUSTUS exon 97932 98571\
    \ . - . ID=exon1 NbV1Ch01\nAUGUSTUS exon 98679 98844 . - . ID=exon2"
  type: boolean?
  inputBinding:
    prefix: --type_dependent
- id: in_collective
  doc: "Boolean - In the case of discontinuous features (i.e. a single\nfeature that\
    \ exists over multiple genomic locations like CDS,\nUTR) we set a uniq ID by default.\
    \ If you wish to set the a\ncollective ID for those feature, please activate this\
    \ option."
  type: boolean?
  inputBinding:
    prefix: --collective
- id: in_tair
  doc: "Boolean - Tair like Output:\nNbV1Ch01 TAIR10 gene 5928 8737 . - . ID=AT1G01020\
    \ NbV1Ch01\nTAIR10 mRNA 5928 8737 . - . ID=AT1G01020.1 NbV1Ch01 TAIR10 exon\n\
    5928 8737 . - . ID=AT1G01020.1-exon1"
  type: boolean?
  inputBinding:
    prefix: --tair
- id: in_nb
  doc: Integer - Start numbering to this value. Default 1.
  type: boolean?
  inputBinding:
    prefix: --nb
- id: in_primary_tag_option
  doc: "primary tag option, case insensitive, list. Allow to specied the\nfeature\
    \ types that will be handled. You can specified a specific\nfeature by given its\
    \ primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all\
    \ the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc\
    \ By\ndefault all feature are taken into account. fill the option by\nthe value\
    \ \"all\" will have the same behaviour."
  type: long?
  inputBinding:
    prefix: -p
- id: in_outfile
  doc: "String - Output GFF file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_manage_ids_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "String - Output GFF file. If no output file is specified, the\noutput will\
    \ be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_IDs.pl
