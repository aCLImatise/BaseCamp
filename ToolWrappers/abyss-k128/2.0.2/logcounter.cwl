class: CommandLineTool
id: logcounter.cwl
inputs:
- id: in_threads
  doc: use N parallel threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: the size of a k-mer
  type: long
  inputBinding:
    prefix: --kmer
- id: in_seed
  doc: the seed value used
  type: string
  inputBinding:
    prefix: --seed
- id: in_bloom_size
  doc: size of bloom filter [500M]
  type: long
  inputBinding:
    prefix: --bloom-size
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
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- logcounter
