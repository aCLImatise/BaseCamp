class: CommandLineTool
id: ABYSS.cwl
inputs:
- id: chastity
  doc: discard unchaste reads [default]
  type: boolean
  inputBinding:
    prefix: --chastity
- id: no_chastity
  doc: do not discard unchaste reads
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: trim_masked
  doc: trim masked bases from the ends of reads [default]
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: no_trim_masked
  doc: do not trim masked bases from the ends of reads
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: trim_quality
  doc: trim bases from the ends of reads whose quality is less than the threshold
  type: string
  inputBinding:
    prefix: --trim-quality
- id: mask_quality
  doc: mask all low quality bases as `N'
  type: string
  inputBinding:
    prefix: --mask-quality
- id: standard_quality
  doc: zero quality is `!' (33) default for FASTQ and SAM files
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: illumina_quality
  doc: zero quality is `@' (64) default for qseq and export files
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: ss
  doc: assemble in strand-specific mode
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: do not assemble in strand-specific mode
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: out
  doc: write the contigs to FILE
  type: File
  inputBinding:
    prefix: --out
- id: km_er
  doc: the length of a k-mer (when -K is not set) [<=128] or the span of a k-mer pair
    (when -K is set)
  type: string
  inputBinding:
    prefix: --kmer
- id: single_km_er
  doc: the length of a single k-mer in a k-mer pair
  type: string
  inputBinding:
    prefix: --single-kmer
- id: trim_length
  doc: maximum length of blunt contigs to trim [k]
  type: string
  inputBinding:
    prefix: --trim-length
- id: coverage
  doc: remove contigs with mean k-mer coverage less than this threshold
  type: double
  inputBinding:
    prefix: --coverage
- id: kc
  doc: remove all k-mers with multiplicity < N [0]
  type: string
  inputBinding:
    prefix: --kc
- id: bubbles
  doc: pop bubbles shorter than N bp [3*k]
  type: string
  inputBinding:
    prefix: --bubbles
- id: no_bubbles
  doc: do not pop bubbles
  type: boolean
  inputBinding:
    prefix: --no-bubbles
- id: erode
  doc: erode bases at the ends of blunt contigs with coverage less than this threshold
    [round(sqrt(median))]
  type: string
  inputBinding:
    prefix: --erode
- id: erode_strand
  doc: erode bases at the ends of blunt contigs with coverage less than this threshold
    on either strand [1 if sqrt(median) > 2 else 0]
  type: string
  inputBinding:
    prefix: --erode-strand
- id: coverage_hist
  doc: write the k-mer coverage histogram to FILE
  type: File
  inputBinding:
    prefix: --coverage-hist
- id: mask_cov
  doc: do not include kmers containing masked bases in coverage calculations [experimental]
  type: boolean
  inputBinding:
    prefix: --mask-cov
- id: snp
  doc: record popped bubbles in FILE
  type: File
  inputBinding:
    prefix: --snp
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for database
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for database
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for database
  type: string
  inputBinding:
    prefix: --species
- id: graph
  doc: generate a graph in dot format
  type: File
  inputBinding:
    prefix: --graph
outputs: []
cwlVersion: v1.1
baseCommand:
- ABYSS
