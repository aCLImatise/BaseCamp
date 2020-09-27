class: CommandLineTool
id: sga_correct.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_outfile
  doc: 'write the corrected reads to FILE (default: READSFILE.ec.fa)'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_threads
  doc: 'use NUM threads for the computation (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_discard
  doc: detect and discard low-quality reads
  type: boolean
  inputBinding:
    prefix: --discard
- id: in_sample_rate
  doc: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\n\
    less memory at the cost of higher runtime. This value must be a power of 2 (default:\
    \ 128)"
  type: long
  inputBinding:
    prefix: --sample-rate
- id: in_algorithm
  doc: 'specify the correction algorithm to use. STR must be one of kmer, hybrid,
    overlap. (default: kmer)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_metrics
  doc: collect error correction metrics (error rate by position in read, etc) and
    write them to FILE
  type: File
  inputBinding:
    prefix: --metrics
- id: in_km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_km_er_threshold
  doc: 'Attempt to correct kmers that are seen less than N times. (default: 3)'
  type: long
  inputBinding:
    prefix: --kmer-threshold
- id: in_km_er_rounds
  doc: 'Perform N rounds of k-mer correction, correcting up to N bases (default: 10)'
  type: long
  inputBinding:
    prefix: --kmer-rounds
- id: in_count_offset
  doc: 'When correcting a kmer, require the count of the new kmer is at least +N higher
    than the count of the old kmer. (default: 1)'
  type: long
  inputBinding:
    prefix: --count-offset
- id: in_learn
  doc: Attempt to learn the k-mer correction threshold (experimental). Overrides -x
    parameter.
  type: boolean
  inputBinding:
    prefix: --learn
- id: in_error_rate
  doc: 'the maximum error rate allowed between two sequences to consider them overlapped
    (default: 0.04)'
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: in_min_overlap
  doc: 'minimum overlap required between two reads (default: 45)'
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_min_count_max_base
  doc: "minimum count of the base that has the highest count in overlap correction.\n\
    The base of the read is only corrected if the maximum base has at least this count.\n\
    Should avoid mis-corrections in low coverage regions (default: 4)"
  type: long
  inputBinding:
    prefix: --min-count-max-base
- id: in_base_threshold
  doc: 'Attempt to correct bases in a read that are seen less than N times (default:
    2)'
  type: long
  inputBinding:
    prefix: --base-threshold
- id: in_conflict
  doc: 'use INT as the threshold to detect a conflicted base in the multi-overlap
    (default: 5)'
  type: long
  inputBinding:
    prefix: --conflict
- id: in_seed_length
  doc: "force the seed length to be LEN. By default, the seed length in the overlap\
    \ step\nis calculated to guarantee all overlaps with --error-rate differences\
    \ are found.\nThis option removes the guarantee but will be (much) faster. As\
    \ SGA can tolerate some\nmissing edges, this option may be preferable for some\
    \ data sets."
  type: long
  inputBinding:
    prefix: --seed-length
- id: in_seed_stride
  doc: "force the seed stride to be LEN. This parameter will be ignored unless --seed-length\n\
    is specified (see above). This parameter defaults to the same value as --seed-length"
  type: long
  inputBinding:
    prefix: --seed-stride
- id: in_branch_cut_off
  doc: "stop the overlap search at N branches. This parameter is used to control the\
    \ search time for\nhighly-repetitive reads. If the number of branches exceeds\
    \ N, the search stops and the read\nwill not be corrected. This is not enabled\
    \ by default."
  type: long
  inputBinding:
    prefix: --branch-cutoff
- id: in_rounds
  doc: 'iteratively correct reads up to a maximum of NUM rounds (default: 1)'
  type: long
  inputBinding:
    prefix: --rounds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- correct
