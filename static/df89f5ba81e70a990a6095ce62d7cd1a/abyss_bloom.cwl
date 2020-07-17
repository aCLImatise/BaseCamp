class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abyss_bloom.cwl
inputs:
- id: km_er
  doc: the size of a k-mer [required]
  type: string
  inputBinding:
    prefix: --kmer
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: bloom_size
  doc: size of bloom filter [500M]
  type: string
  inputBinding:
    prefix: --bloom-size
- id: buffer_size
  doc: size of I/O buffer for each thread, in bytes [100000]
  type: string
  inputBinding:
    prefix: --buffer-size
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: hash_seed
  doc: seed for hash function [0]
  type: string
  inputBinding:
    prefix: --hash-seed
- id: levels
  doc: build a cascading bloom filter with N levels and output the last level
  type: string
  inputBinding:
    prefix: --levels
- id: in_it_level
  doc: ='N=FILE'  initialize level N of cascading bloom filter from FILE
  type: boolean
  inputBinding:
    prefix: --init-level
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
- id: num_locks
  doc: number of write locks on bloom filter [1000]
  type: string
  inputBinding:
    prefix: --num-locks
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
- id: window
  doc: build a bloom filter for subwindow M of N
  type: string
  inputBinding:
    prefix: --window
- id: method
  doc: =`String'      choose distance calculation method  [`jaccard'(default), `forbes',
    `czekanowski']
  type: boolean
  inputBinding:
    prefix: --method
- id: inverse
  doc: get k-mers that are *NOT* in the bloom filter
  type: boolean
  inputBinding:
    prefix: --inverse
- id: bed
  doc: output k-mers in BED format
  type: boolean
  inputBinding:
    prefix: --bed
- id: fast_a
  doc: output k-mers in FASTA format [default]
  type: boolean
  inputBinding:
    prefix: --fasta
- id: raw
  doc: output k-mers in raw format (one per line)
  type: boolean
  inputBinding:
    prefix: --raw
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-bloom
