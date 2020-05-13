class: CommandLineTool
id: abyss_sealer.cwl
inputs:
- id: print_flanks
  doc: outputs flank files
  type: boolean
  inputBinding:
    prefix: --print-flanks
- id: input_scaffold
  doc: load scaffold from FILE
  type: File
  inputBinding:
    prefix: --input-scaffold
- id: flank_length
  doc: length of flanks to be used as pseudoreads [100]
  type: string
  inputBinding:
    prefix: --flank-length
- id: max_gap_length
  doc: max gap size to fill in bp [800]; runtime increases exponentially with respect
    to this parameter
  type: string
  inputBinding:
    prefix: --max-gap-length
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
- id: bloom_size
  doc: size of Bloom filter (e.g. '40G'). Required when not using pre-built Bloom
    filter(s) (-i option)
  type: string
  inputBinding:
    prefix: --bloom-size
- id: dot_file
  doc: write graph traversals to a DOT file
  type: File
  inputBinding:
    prefix: --dot-file
- id: fix_errors
  doc: find and fix single-base errors when reads have no kmers in bloom filter [disabled]
  type: boolean
  inputBinding:
    prefix: --fix-errors
- id: max_cost
  doc: max edges to traverse during each graph search [100000]
  type: string
  inputBinding:
    prefix: --max-cost
- id: input_bloom
  doc: load bloom filter from FILE
  type: File
  inputBinding:
    prefix: --input-bloom
- id: mask
  doc: mask new and changed bases as lower case
  type: boolean
  inputBinding:
    prefix: --mask
- id: no_mask
  doc: do not mask bases [default]
  type: boolean
  inputBinding:
    prefix: --no-mask
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
- id: flank_mismatches
  doc: max mismatches between paths and flanks; use 'nolimit' for no limit [nolimit]
  type: string
  inputBinding:
    prefix: --flank-mismatches
- id: max_mismatches
  doc: max mismatches between all alternate paths; use 'nolimit' for no limit [nolimit]
  type: string
  inputBinding:
    prefix: --max-mismatches
- id: no_limits
  doc: disable all limits; equivalent to '-B nolimit -m nolimit -M nolimit -P nolimit'
  type: boolean
  inputBinding:
    prefix: --no-limits
- id: output_prefix
  doc: prefix of output FASTA files [required]
  type: File
  inputBinding:
    prefix: --output-prefix
- id: max_paths
  doc: merge at most N alternate paths; use 'nolimit' for no limit [2]
  type: string
  inputBinding:
    prefix: --max-paths
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
- id: read_name
  doc: only process reads with names that contain STR
  type: string
  inputBinding:
    prefix: --read-name
- id: search_mem
  doc: mem limit for graph searches; multiply by the number of threads (-j) to get
    the total mem used for graph traversal [500M]
  type: string
  inputBinding:
    prefix: --search-mem
- id: gap_file
  doc: write sealed gaps to FILE
  type: File
  inputBinding:
    prefix: --gap-file
- id: trace_file
  doc: write graph search stats to FILE
  type: File
  inputBinding:
    prefix: --trace-file
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-sealer
