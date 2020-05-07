class: CommandLineTool
id: logcounter.cwl
inputs:
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: km_er
  doc: the size of a k-mer
  type: string
  inputBinding:
    prefix: --kmer
- id: seed
  doc: the seed value used
  type: string
  inputBinding:
    prefix: --seed
- id: bloom_size
  doc: size of bloom filter [500M]
  type: string
  inputBinding:
    prefix: --bloom-size
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
  doc: trim masked bases from the ends of reads
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: no_trim_masked
  doc: do not trim masked bases from the ends of reads [default]
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: trim_quality
  doc: trim bases from the ends of reads whose quality is less than the threshold
  type: string
  inputBinding:
    prefix: --trim-quality
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
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- logcounter
