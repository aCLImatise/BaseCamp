class: CommandLineTool
id: porechop.cwl
inputs:
- id: in_input
  doc: "FASTA/FASTQ of input reads or a directory which will\nbe recursively searched\
    \ for FASTQ files (required)"
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Filename for FASTA or FASTQ of trimmed reads (if not\nset, trimmed reads will\
    \ be printed to stdout)"
  type: File
  inputBinding:
    prefix: --output
- id: in_barcode_stats_csv
  doc: "Option to output a csv file with start/ end/ middle\nbarcode names and percentage\
    \ identities for each\ngiven read. (default: False)"
  type: File
  inputBinding:
    prefix: --barcode_stats_csv
- id: in_format
  doc: "Output format for the reads - if auto, the format\nwill be chosen based on\
    \ the output filename or the\ninput read format (default: auto)"
  type: string
  inputBinding:
    prefix: --format
- id: in_verbosity
  doc: "Level of progress information: 0 = none, 1 = some, 2\n= lots, 3 = full - output\
    \ will go to stdout if reads\nare saved to a file and stderr if reads are printed\n\
    to stdout (default: 1)"
  type: File
  inputBinding:
    prefix: --verbosity
- id: in_threads
  doc: "Number of threads to use for adapter alignment\n(default: 8)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_barcode_dir
  doc: "Reads will be binned based on their barcode and\nsaved to separate files in\
    \ this directory\n(incompatible with --output)"
  type: Directory
  inputBinding:
    prefix: --barcode_dir
- id: in_barcode_labels
  doc: "Reads will have a label added to their header with\ntheir barcode (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --barcode_labels
- id: in_extended_labels
  doc: "Reads will have an extended label added to their\nheader with the barcode_call\
    \ (if any), the best\nstart/ end barcode hit and their identities, and\nwhether\
    \ a barcode is found in middle of read.\n(Dependent on --barcode_labels). (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --extended_labels
- id: in_native_barcodes
  doc: "Only attempts to match the 24 native barcodes\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --native_barcodes
- id: in_pcr_barcodes
  doc: "Only attempts to match the 96 PCR barcodes (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --pcr_barcodes
- id: in_rapid_barcodes
  doc: "Only attempts to match the 12 rapid barcodes\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --rapid_barcodes
- id: in_limit_barcodes_to
  doc: "Specify a list of barcodes to look for (numbers\nrefer to native, PCR or rapid)"
  type: string[]
  inputBinding:
    prefix: --limit_barcodes_to
- id: in_custom_barcodes
  doc: CSV file containing custom barcode sequences
  type: File
  inputBinding:
    prefix: --custom_barcodes
- id: in_barcode_threshold
  doc: "A read must have at least this percent identity to a\nbarcode to be binned\
    \ (default: 75.0)"
  type: double
  inputBinding:
    prefix: --barcode_threshold
- id: in_barcode_diff
  doc: "If the difference between a read's best barcode\nidentity and its second-best\
    \ barcode identity is\nless than this value, it will not be put in a\nbarcode\
    \ bin (to exclude cases which are too close to\ncall) (default: 5.0)"
  type: double
  inputBinding:
    prefix: --barcode_diff
- id: in_require_two_barcodes
  doc: "Reads will only be put in barcode bins if they have\na strong match for the\
    \ barcode on both their start\nand end (default: a read can be binned with a match\n\
    at its start or end)"
  type: boolean
  inputBinding:
    prefix: --require_two_barcodes
- id: in_untrimmed
  doc: "Bin reads but do not trim them (default: trim the\nreads)"
  type: boolean
  inputBinding:
    prefix: --untrimmed
- id: in_discard_unassigned
  doc: "Discard unassigned reads (instead of creating a\n\"none\" bin) (default: False)"
  type: boolean
  inputBinding:
    prefix: --discard_unassigned
- id: in_adapter_threshold
  doc: "An adapter set has to have at least this percent\nidentity to be labelled\
    \ as present and trimmed off\n(0 to 100) (default: 90.0)"
  type: double
  inputBinding:
    prefix: --adapter_threshold
- id: in_check_reads
  doc: "This many reads will be aligned to all possible\nadapters to determine which\
    \ adapter sets are present\n(default: 10000)"
  type: long
  inputBinding:
    prefix: --check_reads
- id: in_scoring_scheme
  doc: "Comma-delimited string of alignment scores: match,\nmismatch, gap open, gap\
    \ extend (default: 3,-6,-5,-2)"
  type: string
  inputBinding:
    prefix: --scoring_scheme
- id: in_end_size
  doc: "The number of base pairs at each end of the read\nwhich will be searched for\
    \ adapter sequences\n(default: 150)"
  type: long
  inputBinding:
    prefix: --end_size
- id: in_min_trim_size
  doc: "Adapter alignments smaller than this will be ignored\n(default: 4)"
  type: long
  inputBinding:
    prefix: --min_trim_size
- id: in_extra_end_trim
  doc: "This many additional bases will be removed next to\nadapters found at the\
    \ ends of reads (default: 2)"
  type: long
  inputBinding:
    prefix: --extra_end_trim
- id: in_end_threshold
  doc: "Adapters at the ends of reads must have at least\nthis percent identity to\
    \ be removed (0 to 100)\n(default: 75.0)"
  type: double
  inputBinding:
    prefix: --end_threshold
- id: in_no_split
  doc: "Skip splitting reads based on middle adapters\n(default: split reads when\
    \ an adapter is found in\nthe middle)"
  type: boolean
  inputBinding:
    prefix: --no_split
- id: in_discard_middle
  doc: "Reads with middle adapters will be discarded\n(default: reads with middle\
    \ adapters are split)\n(required for reads to be used with Nanopolish, this\n\
    option is on by default when outputting reads into\nbarcode bins)"
  type: boolean
  inputBinding:
    prefix: --discard_middle
- id: in_middle_threshold
  doc: "Adapters in the middle of reads must have at least\nthis percent identity\
    \ to be found (0 to 100)\n(default: 85.0)"
  type: double
  inputBinding:
    prefix: --middle_threshold
- id: in_extra_middle_trim_good_side
  doc: "This many additional bases will be removed next to\nmiddle adapters on their\
    \ \"good\" side (default: 10)"
  type: long
  inputBinding:
    prefix: --extra_middle_trim_good_side
- id: in_extra_middle_trim_bad_side
  doc: "This many additional bases will be removed next to\nmiddle adapters on their\
    \ \"bad\" side (default: 100)"
  type: long
  inputBinding:
    prefix: --extra_middle_trim_bad_side
- id: in_min_split_read_size
  doc: "Post-split read pieces smaller than this many base\npairs will not be outputted\
    \ (default: 1000)"
  type: long
  inputBinding:
    prefix: --min_split_read_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_barcode_stats_csv
  doc: "Option to output a csv file with start/ end/ middle\nbarcode names and percentage\
    \ identities for each\ngiven read. (default: False)"
  type: File
  outputBinding:
    glob: $(inputs.in_barcode_stats_csv)
- id: out_verbosity
  doc: "Level of progress information: 0 = none, 1 = some, 2\n= lots, 3 = full - output\
    \ will go to stdout if reads\nare saved to a file and stderr if reads are printed\n\
    to stdout (default: 1)"
  type: File
  outputBinding:
    glob: $(inputs.in_verbosity)
- id: out_barcode_dir
  doc: "Reads will be binned based on their barcode and\nsaved to separate files in\
    \ this directory\n(incompatible with --output)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_barcode_dir)
cwlVersion: v1.1
baseCommand:
- porechop
