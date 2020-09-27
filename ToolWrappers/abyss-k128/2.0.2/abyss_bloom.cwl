class: CommandLineTool
id: abyss_bloom.cwl
inputs:
- id: in_km_er
  doc: the size of a k-mer [required]
  type: long
  inputBinding:
    prefix: --kmer
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_bloom_size
  doc: size of bloom filter [500M]
  type: long
  inputBinding:
    prefix: --bloom-size
- id: in_buffer_size
  doc: size of I/O buffer for each thread, in bytes [100000]
  type: long
  inputBinding:
    prefix: --buffer-size
- id: in_threads
  doc: use N parallel threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_hash_seed
  doc: seed for hash function [0]
  type: long
  inputBinding:
    prefix: --hash-seed
- id: in_levels
  doc: "build a cascading bloom filter with N levels\nand output the last level"
  type: string
  inputBinding:
    prefix: --levels
- id: in_in_it_level
  doc: "='N=FILE'  initialize level N of cascading bloom filter\nfrom FILE"
  type: boolean
  inputBinding:
    prefix: --init-level
- id: in_chastity
  doc: discard unchaste reads [default]
  type: boolean
  inputBinding:
    prefix: --chastity
- id: in_no_chastity
  doc: do not discard unchaste reads
  type: boolean
  inputBinding:
    prefix: --no-chastity
- id: in_trim_masked
  doc: trim masked bases from the ends of reads
  type: boolean
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof reads [default]"
  type: boolean
  inputBinding:
    prefix: --no-trim-masked
- id: in_num_locks
  doc: number of write locks on bloom filter [1000]
  type: long
  inputBinding:
    prefix: --num-locks
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string
  inputBinding:
    prefix: --trim-quality
- id: in_standard_quality
  doc: "zero quality is `!' (33)\ndefault for FASTQ and SAM files"
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64)\ndefault for qseq and export files"
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: in_window
  doc: build a bloom filter for subwindow M of N
  type: string
  inputBinding:
    prefix: --window
- id: in_method
  doc: "=`String'      choose distance calculation method\n[`jaccard'(default), `forbes',\
    \ `czekanowski']"
  type: boolean
  inputBinding:
    prefix: --method
- id: in_inverse
  doc: get k-mers that are *NOT* in the bloom filter
  type: boolean
  inputBinding:
    prefix: --inverse
- id: in_bed
  doc: output k-mers in BED format
  type: boolean
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: output k-mers in FASTA format [default]
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_raw
  doc: output k-mers in raw format (one per line)
  type: boolean
  inputBinding:
    prefix: --raw
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abyss-bloom
