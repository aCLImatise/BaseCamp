class: CommandLineTool
id: konnector.cwl
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
- id: in_bloom_size
  doc: size of bloom filter [500M]
  type: long
  inputBinding:
    prefix: --bloom-size
- id: in_min_coverage
  doc: "kmer coverage threshold for error correction [2].\nThis option specifies the\
    \ number of levels in the\ncascading Bloom filter; it has no effect if the Bloom\n\
    filter is loaded from an external file."
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_max_cost
  doc: max edges to traverse during each graph search [25000]
  type: long
  inputBinding:
    prefix: --max-cost
- id: in_dot_file
  doc: write graph traversals to a DOT file
  type: File
  inputBinding:
    prefix: --dot-file
- id: in_dup_bloom_size
  doc: "use an additional Bloom filter to avoid\nassembling the same region of the\
    \ genome\nmultiple times. This option is highly\nrecommended when the -E (--extend)\
    \ option\nand has no effect otherwise. As a rule of\nthumb, the Bloom filter size\
    \ should be\nabout twice the target genome size [disabled]"
  type: long
  inputBinding:
    prefix: --dup-bloom-size
- id: in_fix_errors
  doc: "find and fix single-base errors when reads\nhave no kmers in bloom filter\
    \ [disabled]"
  type: boolean
  inputBinding:
    prefix: --fix-errors
- id: in_extend
  doc: "in addition to finding a connecting path,\nextend the reads outwards to the\
    \ next\ndead end or branching point in the de Brujin\ngraph. If the reads were\
    \ not successfully\nconnected, extend them inwards as well."
  type: boolean
  inputBinding:
    prefix: --extend
- id: in_fast_q
  doc: "output merged reads in FASTQ format\n(default is FASTA)"
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_min_frag
  doc: min fragment size in base pairs [0]
  type: long
  inputBinding:
    prefix: --min-frag
- id: in_max_frag
  doc: max fragment size in base pairs [1000]
  type: long
  inputBinding:
    prefix: --max-frag
- id: in_input_bloom
  doc: load bloom filter from FILE
  type: File
  inputBinding:
    prefix: --input-bloom
- id: in_interleaved
  doc: input reads files are interleaved
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: in_mask
  doc: mask new and changed bases as lower case
  type: boolean
  inputBinding:
    prefix: --mask
- id: in_no_mask
  doc: do not mask bases [default]
  type: boolean
  inputBinding:
    prefix: --no-mask
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
- id: in_read_mismatches
  doc: "max mismatches between paths and reads; use\n'nolimit' for no limit [nolimit]"
  type: long
  inputBinding:
    prefix: --read-mismatches
- id: in_max_mismatches
  doc: "max mismatches between all alternate paths;\nuse 'nolimit' for no limit [2]"
  type: long
  inputBinding:
    prefix: --max-mismatches
- id: in_no_limits
  doc: "disable all limits; equivalent to\n'-B nolimit -m nolimit -M nolimit -P nolimit'"
  type: boolean
  inputBinding:
    prefix: --no-limits
- id: in_output_prefix
  doc: prefix of output FASTA files [required]
  type: File
  inputBinding:
    prefix: --output-prefix
- id: in_preserve_reads
  doc: don't correct any bases within the reads [disabled]
  type: boolean
  inputBinding:
    prefix: --preserve-reads
- id: in_alt_paths_mode
  doc: "output a separate pseudoread for each alternate\npath connecting a read pair\
    \ (default is to create\na consensus sequence of all connecting paths)"
  type: File
  inputBinding:
    prefix: --alt-paths-mode
- id: in_max_paths
  doc: "merge at most N alternate paths; use 'nolimit'\nfor no limit [2]"
  type: long
  inputBinding:
    prefix: --max-paths
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string
  inputBinding:
    prefix: --trim-quality
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
- id: in_corrected_qual
  doc: "quality score for bases corrected or inserted\nby konnector; only relevant\
    \ when --fastq is\nin effect [40]"
  type: boolean
  inputBinding:
    prefix: --corrected-qual
- id: in_read_name
  doc: only process reads with names that contain STR
  type: string
  inputBinding:
    prefix: --read-name
- id: in_search_mem
  doc: "mem limit for graph searches; multiply by the\nnumber of threads (-j) to get\
    \ the total mem used\nfor graph traversal [500M]"
  type: long
  inputBinding:
    prefix: --search-mem
- id: in_trace_file
  doc: write graph search stats to FILE
  type: File
  inputBinding:
    prefix: --trace-file
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_read_identity
  doc: "min percent seq identity between consensus seq\nand reads [0]"
  type: long
  inputBinding:
    prefix: --read-identity
- id: in_path_identity
  doc: "min percent seq identity across alternate\nconnecting paths [0]"
  type: File
  inputBinding:
    prefix: --path-identity
- id: in_max_branches
  doc: "max branches in de Bruijn graph traversal;\nuse 'nolimit' for no limit [nolimit]"
  type: long
  inputBinding:
    prefix: --max-branches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_alt_paths_mode
  doc: "output a separate pseudoread for each alternate\npath connecting a read pair\
    \ (default is to create\na consensus sequence of all connecting paths)"
  type: File
  outputBinding:
    glob: $(inputs.in_alt_paths_mode)
cwlVersion: v1.1
baseCommand:
- konnector
