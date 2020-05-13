class: CommandLineTool
id: porechop.cwl
inputs:
- id: input
  doc: FASTA/FASTQ of input reads or a directory which will be recursively searched
    for FASTQ files (required)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Filename for FASTA or FASTQ of trimmed reads (if not set, trimmed reads will
    be printed to stdout)
  type: string
  inputBinding:
    prefix: --output
- id: format
  doc: '{auto,fasta,fastq,fasta.gz,fastq.gz} Output format for the reads - if auto,
    the format will be chosen based on the output filename or the input read format
    (default: auto)'
  type: boolean
  inputBinding:
    prefix: --format
- id: verbosity
  doc: 'Level of progress information: 0 = none, 1 = some, 2 = lots, 3 = full - output
    will go to stdout if reads are saved to a file and stderr if reads are printed
    to stdout (default: 1)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: threads
  doc: 'Number of threads to use for adapter alignment (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: barcode_dir
  doc: Reads will be binned based on their barcode and saved to separate files in
    this directory (incompatible with --output)
  type: string
  inputBinding:
    prefix: --barcode_dir
- id: barcode_threshold
  doc: 'A read must have at least this percent identity to a barcode to be binned
    (default: 75.0)'
  type: string
  inputBinding:
    prefix: --barcode_threshold
- id: barcode_diff
  doc: "If the difference between a read's best barcode identity and its second-best\
    \ barcode identity is less than this value, it will not be put in a barcode bin\
    \ (to exclude cases which are too close to call) (default: 5.0)"
  type: string
  inputBinding:
    prefix: --barcode_diff
- id: require_two_barcodes
  doc: 'Reads will only be put in barcode bins if they have a strong match for the
    barcode on both their start and end (default: a read can be binned with a match
    at its start or end)'
  type: boolean
  inputBinding:
    prefix: --require_two_barcodes
- id: untrimmed
  doc: 'Bin reads but do not trim them (default: trim the reads)'
  type: boolean
  inputBinding:
    prefix: --untrimmed
- id: discard_unassigned
  doc: 'Discard unassigned reads (instead of creating a "none" bin) (default: False)'
  type: boolean
  inputBinding:
    prefix: --discard_unassigned
- id: adapter_threshold
  doc: 'An adapter set has to have at least this percent identity to be labelled as
    present and trimmed off (0 to 100) (default: 90.0)'
  type: string
  inputBinding:
    prefix: --adapter_threshold
- id: check_reads
  doc: 'This many reads will be aligned to all possible adapters to determine which
    adapter sets are present (default: 10000)'
  type: string
  inputBinding:
    prefix: --check_reads
- id: scoring_scheme
  doc: 'Comma-delimited string of alignment scores: match, mismatch, gap open, gap
    extend (default: 3,-6,-5,-2)'
  type: string
  inputBinding:
    prefix: --scoring_scheme
- id: end_size
  doc: 'The number of base pairs at each end of the read which will be searched for
    adapter sequences (default: 150)'
  type: string
  inputBinding:
    prefix: --end_size
- id: min_trim_size
  doc: 'Adapter alignments smaller than this will be ignored (default: 4)'
  type: long
  inputBinding:
    prefix: --min_trim_size
- id: extra_end_trim
  doc: 'This many additional bases will be removed next to adapters found at the ends
    of reads (default: 2)'
  type: string
  inputBinding:
    prefix: --extra_end_trim
- id: end_threshold
  doc: 'Adapters at the ends of reads must have at least this percent identity to
    be removed (0 to 100) (default: 75.0)'
  type: string
  inputBinding:
    prefix: --end_threshold
- id: no_split
  doc: 'Skip splitting reads based on middle adapters (default: split reads when an
    adapter is found in the middle)'
  type: boolean
  inputBinding:
    prefix: --no_split
- id: discard_middle
  doc: 'Reads with middle adapters will be discarded (default: reads with middle adapters
    are split) (required for reads to be used with Nanopolish, this option is on by
    default when outputting reads into barcode bins)'
  type: boolean
  inputBinding:
    prefix: --discard_middle
- id: middle_threshold
  doc: 'Adapters in the middle of reads must have at least this percent identity to
    be found (0 to 100) (default: 90.0)'
  type: string
  inputBinding:
    prefix: --middle_threshold
- id: extra_middle_trim_good_side
  doc: 'This many additional bases will be removed next to middle adapters on their
    "good" side (default: 10)'
  type: string
  inputBinding:
    prefix: --extra_middle_trim_good_side
- id: extra_middle_trim_bad_side
  doc: 'This many additional bases will be removed next to middle adapters on their
    "bad" side (default: 100)'
  type: string
  inputBinding:
    prefix: --extra_middle_trim_bad_side
- id: min_split_read_size
  doc: 'Post-split read pieces smaller than this many base pairs will not be outputted
    (default: 1000)'
  type: long
  inputBinding:
    prefix: --min_split_read_size
outputs: []
cwlVersion: v1.1
baseCommand:
- porechop
