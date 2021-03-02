class: CommandLineTool
id: abyss_paired_dbg.cwl
inputs:
- id: in_chastity
  doc: discard unchaste reads [default]
  type: boolean?
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads
  type: boolean?
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: "trim masked bases from the ends of reads\n[default]"
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: do not trim masked bases from the ends of
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_mask_quality
  doc: mask all low quality bases as `N'
  type: string?
  inputBinding:
    prefix: --mask-quality
- id: in_standard_quality
  doc: "zero quality is `!' (33)\ndefault for FASTQ and SAM files"
  type: boolean?
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64)\ndefault for qseq and export files"
  type: boolean?
  inputBinding:
    prefix: --illumina-quality
- id: in_ss
  doc: assemble in strand-specific mode
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: do not assemble in strand-specific mode
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_out
  doc: write the contigs to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_km_er
  doc: "the length of a k-mer (when -K is not set) [<=128]\nor the span of a k-mer\
    \ pair (when -K is set)"
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_single_km_er
  doc: the length of a single k-mer in a k-mer pair
  type: long?
  inputBinding:
    prefix: --single-kmer
- id: in_trim_length
  doc: maximum length of blunt contigs to trim [k]
  type: long?
  inputBinding:
    prefix: --trim-length
- id: in_coverage
  doc: "remove contigs with mean k-mer coverage\nless than this threshold"
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_kc
  doc: remove all k-mers with multiplicity < N [0]
  type: long?
  inputBinding:
    prefix: --kc
- id: in_bubbles
  doc: pop bubbles shorter than N bp [3*k]
  type: long?
  inputBinding:
    prefix: --bubbles
- id: in_no_bubbles
  doc: do not pop bubbles
  type: boolean?
  inputBinding:
    prefix: --no-bubbles
- id: in_erode
  doc: "erode bases at the ends of blunt contigs with coverage\nless than this threshold\
    \ [round(sqrt(median))]"
  type: string?
  inputBinding:
    prefix: --erode
- id: in_erode_strand
  doc: "erode bases at the ends of blunt contigs\nwith coverage less than this threshold\
    \ on\neither strand [1 if sqrt(median) > 2 else 0]"
  type: long?
  inputBinding:
    prefix: --erode-strand
- id: in_coverage_hist
  doc: write the k-mer coverage histogram to FILE
  type: File?
  inputBinding:
    prefix: --coverage-hist
- id: in_mask_cov
  doc: "do not include kmers containing masked bases in\ncoverage calculations [experimental]"
  type: boolean?
  inputBinding:
    prefix: --mask-cov
- id: in_snp
  doc: record popped bubbles in FILE
  type: File?
  inputBinding:
    prefix: --snp
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for database
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for database
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for database
  type: string?
  inputBinding:
    prefix: --species
- id: in_graph
  doc: generate a graph in dot format
  type: File?
  inputBinding:
    prefix: --graph
- id: in_reads
  doc: -q, --trim-quality=N  trim bases from the ends of reads whose
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abyss-paired-dbg
