class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_manage_functional_annotation.pl.cwl
inputs:
- id: blast
  doc: String - Input blast ( outfmt 6 = tabular ) file that will be used to complement
    the features read from the first file (specified with --ref).
  type: string
  inputBinding:
    prefix: --blast
- id: db
  doc: String - The fasta file that has been used as DB for the blast. Gene names
    and products/descriptions will be fished from this file.
  type: string
  inputBinding:
    prefix: --db
- id: blast_evalue
  doc: Integer - Maximum e-value to keep the annotation from the blast file. By default
    1e-6.
  type: string
  inputBinding:
    prefix: --blast_evalue
- id: pe
  doc: Integer - The PE (protein existence) in the uniprot header indicates the type
    of evidence that supports the existence of the protein. You can decide until which
    protein existence level you want to consider to lift the finctional information.
    Default 5. 1. Experimental evidence at protein level 2. Experimental evidence
    at transcript level 3. Protein inferred from homology 4. Protein predicted 5.
    Protein uncertain
  type: boolean
  inputBinding:
    prefix: --pe
- id: interpro
  doc: String - Input interpro file (.tsv) that will be used to complement the features
    read from the first file (specified with --ref).
  type: string
  inputBinding:
    prefix: --interpro
- id: id
  doc: String - This option will changed the id name. It will create from id prefix
    (usually 6 letters) given as input, uniq IDs like prefixE00000000001. Where E
    mean exon. Instead E we can have C for CDS, G for gene, T for mRNA, U for Utr.
    In the case of discontinuous features (i.e. a single feature that exists over
    multiple genomic locations) the same ID may appear on multiple lines. All lines
    that share an ID collectively represent a signle feature.
  type: boolean
  inputBinding:
    prefix: -id
- id: i_dau
  doc: Boolean - This option (id all uniq) is similar to -id option but Id of features
    that share an ID collectively will be change by different and uniq ID.
  type: boolean
  inputBinding:
    prefix: -idau
- id: nb
  doc: Integer - Usefull only if -id is used. This option is used to define the number
    that will be used to begin the numbering. By default begin by 1.
  type: boolean
  inputBinding:
    prefix: -nb
- id: output
  doc: String - Output GFF file. If no output file is specified, the output will be
    written to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: boolean_verbose_debug
  doc: Boolean - Verbose, for debug purpose.
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: one_dot
  doc: qseqid  query (e.g., gene) sequence id
  type: string
  inputBinding:
    position: 0
- id: two_dot
  doc: sseqid  subject (e.g., reference genome) sequence id
  type: string
  inputBinding:
    position: 1
- id: three_dot
  doc: pident  percentage of identical matches
  type: string
  inputBinding:
    position: 2
- id: four_dot
  doc: length  alignment length
  type: string
  inputBinding:
    position: 3
- id: five_dot
  doc: mismatch  number of mismatches
  type: string
  inputBinding:
    position: 4
- id: six_dot
  doc: gapopen   number of gap openings
  type: string
  inputBinding:
    position: 5
- id: seven_dot
  doc: qstart  start of alignment in query
  type: string
  inputBinding:
    position: 6
- id: eight_dot
  doc: qend  end of alignment in query
  type: string
  inputBinding:
    position: 7
- id: nine_dot
  doc: sstart  start of alignment in subject
  type: string
  inputBinding:
    position: 8
- id: one_zero_dot
  doc: send  end of alignment in subject
  type: string
  inputBinding:
    position: 9
- id: one_one_dot
  doc: evalue  expect value
  type: string
  inputBinding:
    position: 10
- id: one_two_dot
  doc: bitscore  bit score
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_functional_annotation.pl
