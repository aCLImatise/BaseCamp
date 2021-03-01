class: CommandLineTool
id: abyss_sealer.cwl
inputs:
- id: in_print_flanks
  doc: outputs flank files
  type: boolean?
  inputBinding:
    prefix: --print-flanks
- id: in_input_scaffold
  doc: load scaffold from FILE
  type: File?
  inputBinding:
    prefix: --input-scaffold
- id: in_flank_length
  doc: length of flanks to be used as pseudoreads [100]
  type: long?
  inputBinding:
    prefix: --flank-length
- id: in_max_gap_length
  doc: "max gap size to fill in bp [800]; runtime increases\nexponentially with respect\
    \ to this parameter"
  type: long?
  inputBinding:
    prefix: --max-gap-length
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: the size of a k-mer
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_bloom_size
  doc: "size of Bloom filter (e.g. '40G'). Required\nwhen not using pre-built Bloom\
    \ filter(s)\n(-i option)"
  type: long?
  inputBinding:
    prefix: --bloom-size
- id: in_dot_file
  doc: write graph traversals to a DOT file
  type: File?
  inputBinding:
    prefix: --dot-file
- id: in_fix_errors
  doc: "find and fix single-base errors when reads\nhave no kmers in bloom filter\
    \ [disabled]"
  type: boolean?
  inputBinding:
    prefix: --fix-errors
- id: in_max_cost
  doc: max edges to traverse during each graph search [100000]
  type: long?
  inputBinding:
    prefix: --max-cost
- id: in_input_bloom
  doc: load bloom filter from FILE
  type: File?
  inputBinding:
    prefix: --input-bloom
- id: in_mask
  doc: mask new and changed bases as lower case
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_no_mask
  doc: do not mask bases [default]
  type: boolean?
  inputBinding:
    prefix: --no-mask
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
  doc: trim masked bases from the ends of reads
  type: boolean?
  inputBinding:
    prefix: --trim-masked
- id: in_no_trim_masked
  doc: "do not trim masked bases from the ends\nof reads [default]"
  type: boolean?
  inputBinding:
    prefix: --no-trim-masked
- id: in_flank_mismatches
  doc: "max mismatches between paths and flanks; use\n'nolimit' for no limit [nolimit]"
  type: long?
  inputBinding:
    prefix: --flank-mismatches
- id: in_max_mismatches
  doc: "max mismatches between all alternate paths;\nuse 'nolimit' for no limit [nolimit]"
  type: long?
  inputBinding:
    prefix: --max-mismatches
- id: in_no_limits
  doc: "disable all limits; equivalent to\n'-B nolimit -m nolimit -M nolimit -P nolimit'"
  type: boolean?
  inputBinding:
    prefix: --no-limits
- id: in_output_prefix
  doc: prefix of output FASTA files [required]
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_max_paths
  doc: "merge at most N alternate paths; use 'nolimit'\nfor no limit [2]"
  type: long?
  inputBinding:
    prefix: --max-paths
- id: in_trim_quality
  doc: "trim bases from the ends of reads whose\nquality is less than the threshold"
  type: string?
  inputBinding:
    prefix: --trim-quality
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
- id: in_read_name
  doc: only process reads with names that contain STR
  type: string?
  inputBinding:
    prefix: --read-name
- id: in_search_mem
  doc: "mem limit for graph searches; multiply by the\nnumber of threads (-j) to get\
    \ the total mem used\nfor graph traversal [500M]"
  type: long?
  inputBinding:
    prefix: --search-mem
- id: in_gap_file
  doc: write sealed gaps to FILE
  type: File?
  inputBinding:
    prefix: --gap-file
- id: in_trace_file
  doc: write graph search stats to FILE
  type: File?
  inputBinding:
    prefix: --trace-file
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_max_branches
  doc: "max branches in de Bruijn graph traversal;\nuse 'nolimit' for no limit [nolimit]"
  type: long?
  inputBinding:
    prefix: --max-branches
- id: in_min_frag
  doc: min fragment size in base pairs
  type: long?
  inputBinding:
    prefix: --min-frag
- id: in_max_frag
  doc: max fragment size in base pairs
  type: long?
  inputBinding:
    prefix: --max-frag
- id: in_abyss_sealer_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bloom_filter_size
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abyss-sealer
