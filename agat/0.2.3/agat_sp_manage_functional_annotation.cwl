class: CommandLineTool
id: agat_sp_manage_functional_annotation.pl.cwl
inputs:
- id: blast
  doc: Input blast ( outfmt 6 = tabular ) file that will be used to complement the
    features read from the first file (specified with --ref).
  type: string
  inputBinding:
    prefix: --blast
- id: db
  doc: The fasta file that has been used as DB for the blast. Gene names and products/descriptions
    will be fished from this file.
  type: string
  inputBinding:
    prefix: --db
- id: blast_evalue
  doc: Maximum e-value to keep the annotation from the blast file. By default 1e-6.
  type: string
  inputBinding:
    prefix: --blast_evalue
- id: pe
  doc: The PE (protein existence) in the uniprot header indicates the type of evidence
    that supports the existence of the protein. You can decide until which protein
    existence level you want to consider to lift the finctional information. Default
    5. 1. Experimental evidence at protein level 2. Experimental evidence at transcript
    level 3. Protein inferred from homology 4. Protein predicted 5. Protein uncertain
  type: boolean
  inputBinding:
    prefix: --pe
- id: interpro
  doc: Input interpro file (.tsv) that will be used to complement the features read
    from the first file (specified with --ref).
  type: string
  inputBinding:
    prefix: --interpro
- id: id
  doc: This option will changed the id name. It will create from id prefix (usually
    6 letters) given as input, uniq IDs like prefixE00000000001. Where E mean exon.
    Instead E we can have C for CDS, G for gene, T for mRNA, U for Utr. In the case
    of discontinuous features (i.e. a single feature that exists over multiple genomic
    locations) the same ID may appear on multiple lines. All lines that share an ID
    collectively represent a signle feature.
  type: boolean
  inputBinding:
    prefix: -id
- id: i_dau
  doc: This option (id all uniq) is similar to -id option but Id of features that
    share an ID collectively will be change by different and uniq ID.
  type: boolean
  inputBinding:
    prefix: -idau
- id: nb
  doc: Usefull only if -id is used. This option is used to define the number that
    will be used to begin the numbering. By default begin by 1.
  type: boolean
  inputBinding:
    prefix: -nb
- id: output
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: v
  doc: Verbose (bolean). For debug purpose.
  type: boolean
  inputBinding:
    prefix: -v
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
- agat_sp_manage_functional_annotation.pl
