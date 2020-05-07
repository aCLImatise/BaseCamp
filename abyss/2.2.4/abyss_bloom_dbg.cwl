class: CommandLineTool
id: abyss_bloom_dbg.cwl
inputs:
- id: bloom_size
  doc: overall memory budget for the assembly in bytes. Unit suffixes 'k' (kilobytes),
    'M' (megabytes), or 'G' (gigabytes) may be used. [required]
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
- id: graph
  doc: write de Bruijn graph to FILE (GraphViz)
  type: File
  inputBinding:
    prefix: --graph
- id: num_hashes
  doc: number of Bloom filter hash functions [1]
  type: string
  inputBinding:
    prefix: --num-hashes
- id: input_bloom
  doc: load Bloom filter from FILE
  type: File
  inputBinding:
    prefix: --input-bloom
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
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
- id: km_er
  doc: the size of a k-mer [<=128]
  type: string
  inputBinding:
    prefix: --kmer
- id: kc
  doc: ignore k-mers having a count < N, using a counting Bloom filter [2]
  type: string
  inputBinding:
    prefix: --kc
- id: out
  doc: write the contigs to FILE [STDOUT]
  type: File
  inputBinding:
    prefix: --out
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
  doc: zero quality is `!' (33), typically for FASTQ and SAM files [default]
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: illumina_quality
  doc: zero quality is `@' (64), typically for qseq and export files
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: trim_length
  doc: max branch length to trim, in k-mers [k]
  type: string
  inputBinding:
    prefix: --trim-length
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: single_km_er
  doc: use a spaced seed that consists of two k-mers separated by a gap. K must be
    chosen such that K <= k/2
  type: string
  inputBinding:
    prefix: --single-kmer
- id: qr_seed
  doc: 'use a spaced seed than consists of two mirrored QR seeds separated by a gap.  The
    following must hold: (a) N must be prime, (b) N >= 11, (c) N <= k/2'
  type: string
  inputBinding:
    prefix: --qr-seed
- id: spaced_seed
  doc: bitmask indicating k-mer positions to be ignored during hashing. The pattern
    must be symmetric
  type: string
  inputBinding:
    prefix: --spaced-seed
- id: cov_track
  doc: WIG track with 0/1 indicating k-mers with coverage above the -c threshold.
    A reference must also be specified with -R.
  type: File
  inputBinding:
    prefix: --cov-track
- id: read_log
  doc: write outcome of processing each read to FILE
  type: File
  inputBinding:
    prefix: --read-log
- id: ref
  doc: specify a reference genome. FILE may be FASTA, FASTQ, SAM, or BAM and may be
    gzipped.
  type: File
  inputBinding:
    prefix: --ref
- id: trace_file
  doc: write debugging info about generation of each read to FILE
  type: File
  inputBinding:
    prefix: --trace-file
- id: checkpoint
  doc: create a checkpoint every N reads [disabled=0]
  type: string
  inputBinding:
    prefix: --checkpoint
- id: keep_checkpoint
  doc: do not delete checkpoint files after assembly completes successfully [disabled]
  type: boolean
  inputBinding:
    prefix: --keep-checkpoint
- id: checkpoint_prefix
  doc: filename prefix for checkpoint files ['bloom-dbg-checkpoint']
  type: string
  inputBinding:
    prefix: --checkpoint-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-bloom-dbg
