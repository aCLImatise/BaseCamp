class: CommandLineTool
id: abyss_bloom_dbg.cwl
inputs:
- id: in___assemblyfasta
  doc: '[options] <FASTQ> [FASTQ]... > assembly.fasta'
  type: long
  inputBinding:
    prefix: -G
- id: in_bloom_size
  doc: "overall memory budget for the assembly in bytes.\nUnit suffixes 'k' (kilobytes),\
    \ 'M' (megabytes),\nor 'G' (gigabytes) may be used. [required]"
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
- id: in_graph
  doc: write de Bruijn graph to FILE (GraphViz)
  type: File
  inputBinding:
    prefix: --graph
- id: in_num_hashes
  doc: number of Bloom filter hash functions [1]
  type: long
  inputBinding:
    prefix: --num-hashes
- id: in_threads
  doc: use N parallel threads [1]
  type: long
  inputBinding:
    prefix: --threads
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
- id: in_km_er
  doc: the size of a k-mer [required]
  type: long
  inputBinding:
    prefix: --kmer
- id: in_kc
  doc: "use a cascading Bloom filter with N levels,\ninstead of a counting Bloom filter\
    \ [2]"
  type: long
  inputBinding:
    prefix: --kc
- id: in_out
  doc: write the contigs to FILE [STDOUT]
  type: File
  inputBinding:
    prefix: --out
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string
  inputBinding:
    prefix: --trim-quality
- id: in_mask_quality
  doc: mask all low quality bases as `N'
  type: string
  inputBinding:
    prefix: --mask-quality
- id: in_standard_quality
  doc: "zero quality is `!' (33), typically\nfor FASTQ and SAM files [default]"
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: in_illumina_quality
  doc: "zero quality is `@' (64), typically\nfor qseq and export files"
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: in_trim_length
  doc: max branch length to trim, in k-mers [k]
  type: boolean
  inputBinding:
    prefix: --trim-length
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_single_km_er
  doc: "use a spaced seed that consists of two k-mers\nseparated by a gap. K must\
    \ be chosen such that\nK <= k/2"
  type: long
  inputBinding:
    prefix: --single-kmer
- id: in_qr_seed
  doc: "use a spaced seed than consists of two mirrored\nQR seeds separated by a gap.\
    \  The following must\nhold: (a) N must be prime, (b) N >= 11,\n(c) N <= k/2"
  type: long
  inputBinding:
    prefix: --qr-seed
- id: in_spaced_seed
  doc: "bitmask indicating k-mer positions to be\nignored during hashing. The pattern\
    \ must be\nsymmetric"
  type: string
  inputBinding:
    prefix: --spaced-seed
- id: in_cov_track
  doc: "WIG track with 0/1 indicating k-mers with\ncoverage above the -c threshold.\
    \ A reference\nmust also be specified with -R."
  type: File
  inputBinding:
    prefix: --cov-track
- id: in_trace_file
  doc: "write debugging info about extension of\neach read to FILE"
  type: File
  inputBinding:
    prefix: --trace-file
- id: in_ref
  doc: "specify a reference genome. FILE may be\nFASTA, FASTQ, SAM, or BAM and may\
    \ be gzipped."
  type: File
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abyss-bloom-dbg
