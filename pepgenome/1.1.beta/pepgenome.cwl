class: CommandLineTool
id: pepgenome.cwl
inputs:
- id: chr
  doc: 'Export chr prefix Allowed 0, 1  (default: 0)'
  type: string
  inputBinding:
    prefix: -chr
- id: fast_a
  doc: Filepath for file containing protein sequences in FASTA format
  type: string
  inputBinding:
    prefix: -fasta
- id: format
  doc: Select the output formats from gtf, gct, bed, ptmbed, all or combinations thereof
    separated by ',' (default all)
  type: string
  inputBinding:
    prefix: -format
- id: genome
  doc: Filepath for file containing genome sequence in FASTA format used to extract
    chromosome names and order and differenciate between assembly and scaffolds. If
    not set chromosome and scaffold names and order is extracted from GTF input.
  type: string
  inputBinding:
    prefix: -genome
- id: gtf
  doc: Filepath for file containing genome annotation in GTF format
  type: string
  inputBinding:
    prefix: -gtf
- id: in
  doc: 'Comma(,) separated file paths for files containing peptide identifications
    (Contents of the file can tab separated format. i.e., File format: four columns:
    SampleName PeptideSequence PSMs Quant; or mzTab, and mzIdentML)'
  type: string
  inputBinding:
    prefix: -in
- id: inf
  doc: Format of the input file (mztab, mzid, or tsv). (default tsv)
  type: string
  inputBinding:
    prefix: -inf
- id: inm
  doc: Compute the kmer algorithm in memory or using database algorithm (default 0,
    database 1)
  type: string
  inputBinding:
    prefix: -inm
- id: merge
  doc: Set 'true' to merge mappings from all files from input (default 'false')
  type: string
  inputBinding:
    prefix: -merge
- id: mm
  doc: 'Allowed mismatches (0, 1 or 2; default: 0)'
  type: string
  inputBinding:
    prefix: -mm
- id: mm_mode
  doc: 'Mismatch mode (true or false): if true mismatching with two mismatches will
    only allow 1 mismatch every kmersize (default: 5) positions. (default: false)'
  type: string
  inputBinding:
    prefix: -mmmode
- id: source
  doc: 'Please give a source name which will be used in the second column in the output
    gtf file (default: PoGo)'
  type: string
  inputBinding:
    prefix: -source
- id: spark_master
  doc: 'Spark master String. i.e., to run locally use: local[*]'
  type: string
  inputBinding:
    prefix: -spark_master
outputs: []
cwlVersion: v1.1
baseCommand:
- pepgenome
