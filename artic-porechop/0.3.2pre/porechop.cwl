#!/usr/bin/env cwl-runner

baseCommand:
- porechop
class: CommandLineTool
cwlVersion: v1.0
id: porechop
inputs:
- doc: FASTA/FASTQ of input reads or a directory which will be recursively searched
    for FASTQ files (required)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Filename for FASTA or FASTQ of trimmed reads (if not set, trimmed reads will
    be printed to stdout)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Option to output a csv file with start/ end/ middle barcode names and percentage
    identities for each given read. (default: False)'
  id: barcode_stats_csv
  inputBinding:
    prefix: --barcode_stats_csv
  type: boolean
- doc: '{auto,fasta,fastq,fasta.gz,fastq.gz} Output format for the reads - if auto,
    the format will be chosen based on the output filename or the input read format
    (default: auto)'
  id: format
  inputBinding:
    prefix: --format
  type: boolean
- doc: 'Level of progress information: 0 = none, 1 = some, 2 = lots, 3 = full - output
    will go to stdout if reads are saved to a file and stderr if reads are printed
    to stdout (default: 1)'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: 'Number of threads to use for adapter alignment (default: 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Reads will be binned based on their barcode and saved to separate files in
    this directory (incompatible with --output)
  id: barcode_dir
  inputBinding:
    prefix: --barcode_dir
  type: string
- doc: 'Reads will have a label added to their header with their barcode (default:
    False)'
  id: barcode_labels
  inputBinding:
    prefix: --barcode_labels
  type: boolean
- doc: 'Reads will have an extended label added to their header with the barcode_call
    (if any), the best start/ end barcode hit and their identities, and whether a
    barcode is found in middle of read. (Dependent on --barcode_labels). (default:
    False)'
  id: extended_labels
  inputBinding:
    prefix: --extended_labels
  type: boolean
- doc: 'Only attempts to match the 24 native barcodes (default: False)'
  id: native_barcodes
  inputBinding:
    prefix: --native_barcodes
  type: boolean
- doc: 'Only attempts to match the 96 PCR barcodes (default: False)'
  id: pcr_barcodes
  inputBinding:
    prefix: --pcr_barcodes
  type: boolean
- doc: 'Only attempts to match the 12 rapid barcodes (default: False)'
  id: rapid_barcodes
  inputBinding:
    prefix: --rapid_barcodes
  type: boolean
- doc: Specify a list of barcodes to look for (numbers refer to native, PCR or rapid)
  id: limit_barcodes_to
  inputBinding:
    prefix: --limit_barcodes_to
  type:
    items: string
    type: array
- doc: CSV file containing custom barcode sequences
  id: custom_barcodes
  inputBinding:
    prefix: --custom_barcodes
  type: string
- doc: 'A read must have at least this percent identity to a barcode to be binned
    (default: 75.0)'
  id: barcode_threshold
  inputBinding:
    prefix: --barcode_threshold
  type: string
- doc: "If the difference between a read's best barcode identity and its second-best\
    \ barcode identity is less than this value, it will not be put in a barcode bin\
    \ (to exclude cases which are too close to call) (default: 5.0)"
  id: barcode_diff
  inputBinding:
    prefix: --barcode_diff
  type: string
- doc: 'Reads will only be put in barcode bins if they have a strong match for the
    barcode on both their start and end (default: a read can be binned with a match
    at its start or end)'
  id: require_two_barcodes
  inputBinding:
    prefix: --require_two_barcodes
  type: boolean
- doc: 'Bin reads but do not trim them (default: trim the reads)'
  id: untrimmed
  inputBinding:
    prefix: --untrimmed
  type: boolean
- doc: 'Discard unassigned reads (instead of creating a "none" bin) (default: False)'
  id: discard_unassigned
  inputBinding:
    prefix: --discard_unassigned
  type: boolean
- doc: 'An adapter set has to have at least this percent identity to be labelled as
    present and trimmed off (0 to 100) (default: 90.0)'
  id: adapter_threshold
  inputBinding:
    prefix: --adapter_threshold
  type: string
- doc: 'This many reads will be aligned to all possible adapters to determine which
    adapter sets are present (default: 10000)'
  id: check_reads
  inputBinding:
    prefix: --check_reads
  type: string
- doc: 'Comma-delimited string of alignment scores: match, mismatch, gap open, gap
    extend (default: 3,-6,-5,-2)'
  id: scoring_scheme
  inputBinding:
    prefix: --scoring_scheme
  type: string
- doc: 'The number of base pairs at each end of the read which will be searched for
    adapter sequences (default: 150)'
  id: end_size
  inputBinding:
    prefix: --end_size
  type: string
- doc: 'Adapter alignments smaller than this will be ignored (default: 4)'
  id: min_trim_size
  inputBinding:
    prefix: --min_trim_size
  type: long
- doc: 'This many additional bases will be removed next to adapters found at the ends
    of reads (default: 2)'
  id: extra_end_trim
  inputBinding:
    prefix: --extra_end_trim
  type: string
- doc: 'Adapters at the ends of reads must have at least this percent identity to
    be removed (0 to 100) (default: 75.0)'
  id: end_threshold
  inputBinding:
    prefix: --end_threshold
  type: string
- doc: 'Skip splitting reads based on middle adapters (default: split reads when an
    adapter is found in the middle)'
  id: no_split
  inputBinding:
    prefix: --no_split
  type: boolean
- doc: 'Reads with middle adapters will be discarded (default: reads with middle adapters
    are split) (required for reads to be used with Nanopolish, this option is on by
    default when outputting reads into barcode bins)'
  id: discard_middle
  inputBinding:
    prefix: --discard_middle
  type: boolean
- doc: 'Adapters in the middle of reads must have at least this percent identity to
    be found (0 to 100) (default: 85.0)'
  id: middle_threshold
  inputBinding:
    prefix: --middle_threshold
  type: string
- doc: 'This many additional bases will be removed next to middle adapters on their
    "good" side (default: 10)'
  id: extra_middle_trim_good_side
  inputBinding:
    prefix: --extra_middle_trim_good_side
  type: string
- doc: 'This many additional bases will be removed next to middle adapters on their
    "bad" side (default: 100)'
  id: extra_middle_trim_bad_side
  inputBinding:
    prefix: --extra_middle_trim_bad_side
  type: string
- doc: 'Post-split read pieces smaller than this many base pairs will not be outputted
    (default: 1000)'
  id: min_split_read_size
  inputBinding:
    prefix: --min_split_read_size
  type: long
