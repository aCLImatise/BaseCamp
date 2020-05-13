class: CommandLineTool
id: konnector.cwl
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
- id: bloom_size
  doc: size of bloom filter [500M]
  type: string
  inputBinding:
    prefix: --bloom-size
- id: min_coverage
  doc: kmer coverage threshold for error correction [2]. This option specifies the
    number of levels in the cascading Bloom filter; it has no effect if the Bloom
    filter is loaded from an external file.
  type: string
  inputBinding:
    prefix: --min-coverage
- id: max_cost
  doc: max edges to traverse during each graph search [25000]
  type: string
  inputBinding:
    prefix: --max-cost
- id: dot_file
  doc: write graph traversals to a DOT file
  type: File
  inputBinding:
    prefix: --dot-file
- id: dup_bloom_size
  doc: use an additional Bloom filter to avoid assembling the same region of the genome
    multiple times. This option is highly recommended when the -E (--extend) option
    and has no effect otherwise. As a rule of thumb, the Bloom filter size should
    be about twice the target genome size [disabled]
  type: string
  inputBinding:
    prefix: --dup-bloom-size
- id: fix_errors
  doc: find and fix single-base errors when reads have no kmers in bloom filter [disabled]
  type: boolean
  inputBinding:
    prefix: --fix-errors
- id: extend
  doc: in addition to finding a connecting path, extend the reads outwards to the
    next dead end or branching point in the de Brujin graph. If the reads were not
    successfully connected, extend them inwards as well.
  type: boolean
  inputBinding:
    prefix: --extend
- id: fast_q
  doc: output merged reads in FASTQ format (default is FASTA)
  type: boolean
  inputBinding:
    prefix: --fastq
- id: min_frag
  doc: min fragment size in base pairs [0]
  type: string
  inputBinding:
    prefix: --min-frag
- id: max_frag
  doc: max fragment size in base pairs [1000]
  type: string
  inputBinding:
    prefix: --max-frag
- id: input_bloom
  doc: load bloom filter from FILE
  type: File
  inputBinding:
    prefix: --input-bloom
- id: interleaved
  doc: input reads files are interleaved
  type: boolean
  inputBinding:
    prefix: --interleaved
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
- id: read_mismatches
  doc: max mismatches between paths and reads; use 'nolimit' for no limit [nolimit]
  type: string
  inputBinding:
    prefix: --read-mismatches
- id: max_mismatches
  doc: max mismatches between all alternate paths; use 'nolimit' for no limit [2]
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
- id: preserve_reads
  doc: don't correct any bases within the reads [disabled]
  type: boolean
  inputBinding:
    prefix: --preserve-reads
- id: alt_paths_mode
  doc: output a separate pseudoread for each alternate path connecting a read pair
    (default is to create a consensus sequence of all connecting paths)
  type: boolean
  inputBinding:
    prefix: --alt-paths-mode
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
  doc: zero quality is `!' (33), typically for FASTQ and SAM files [default]
  type: boolean
  inputBinding:
    prefix: --standard-quality
- id: illumina_quality
  doc: zero quality is `@' (64), typically for qseq and export files
  type: boolean
  inputBinding:
    prefix: --illumina-quality
- id: corrected_qual
  doc: quality score for bases corrected or inserted by konnector; only relevant when
    --fastq is in effect [40]
  type: boolean
  inputBinding:
    prefix: --corrected-qual
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
- id: read_identity
  doc: min percent seq identity between consensus seq and reads [0]
  type: string
  inputBinding:
    prefix: --read-identity
- id: path_identity
  doc: min percent seq identity across alternate connecting paths [0]
  type: string
  inputBinding:
    prefix: --path-identity
outputs: []
cwlVersion: v1.1
baseCommand:
- konnector
