class: CommandLineTool
id: ../../../AdapterRemoval.cwl
inputs:
- id: identify_adapters
  doc: 'Attempt to identify the adapter pair of PE reads, by searching for overlapping
    mate reads [default: off].'
  type: boolean
  inputBinding:
    prefix: --identify-adapters
- id: threads
  doc: 'Maximum number of threads [default: 1]'
  type: string
  inputBinding:
    prefix: --threads
- id: quality_base
  doc: 'Quality base used to encode Phred scores in input; either 33, 64, or solexa
    [default: 33].'
  type: string
  inputBinding:
    prefix: --qualitybase
- id: quality_base_output
  doc: Quality base used to encode Phred scores in output; either 33, 64, or solexa.
    By default, reads will be written in the same format as the that specified using
    --qualitybase.
  type: string
  inputBinding:
    prefix: --qualitybase-output
- id: quality_max
  doc: "Specifies the maximum Phred score expected in input files, and used when writing\
    \ output. ASCII encoded values are limited to the characters '!' (ASCII = 33)\
    \ to '~' (ASCII = 126), meaning that possible scores are 0 - 93 with offset 33,\
    \ and 0 - 62 for offset 64 and Solexa scores [default: 41]."
  type: string
  inputBinding:
    prefix: --qualitymax
- id: mate_separator
  doc: "Character separating the mate number (1 or 2) from the read name in FASTQ\
    \ records [default: '/']."
  type: string
  inputBinding:
    prefix: --mate-separator
- id: interleaved
  doc: 'This option enables both the --interleaved-input option and the --interleaved-output
    option [default: off].'
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: interleaved_input
  doc: 'The (single) input file provided contains both the mate 1 and mate 2 reads,
    one pair after the other, with one mate 1 reads followed by one mate 2 read. This
    option is implied by the --interleaved option [default: off].'
  type: boolean
  inputBinding:
    prefix: --interleaved-input
- id: interleaved_output
  doc: 'If set, trimmed paired-end reads are written to a single file containing mate
    1 and mate 2 reads, one pair after the other. This option is implied by the --interleaved
    option [default: off].'
  type: boolean
  inputBinding:
    prefix: --interleaved-output
- id: combined_output
  doc: "If set, all reads are written to the same file(s), specified by --output1\
    \ and --output2 (--output1 only if --interleaved-output is not set). Discarded\
    \ reads are replaced with a single 'N' with Phred score 0 [default: off]."
  type: boolean
  inputBinding:
    prefix: --combined-output
- id: basename
  doc: 'Default prefix for all output files for which no filename was explicitly set
    [default: your_output].'
  type: string
  inputBinding:
    prefix: --basename
- id: settings
  doc: 'Output file containing information on the parameters used in the run as well
    as overall statistics on the reads after trimming [default: BASENAME.settings]'
  type: File
  inputBinding:
    prefix: --settings
- id: output_one
  doc: 'Output file containing trimmed mate1 reads [default: BASENAME.pair1.truncated
    (PE), BASENAME.truncated (SE), or BASENAME.paired.truncated (interleaved PE)]'
  type: File
  inputBinding:
    prefix: --output1
- id: output_two
  doc: 'Output file containing trimmed mate 2 reads [default: BASENAME.pair2.truncated
    (only used in PE mode, but not if --interleaved-output is enabled)]'
  type: File
  inputBinding:
    prefix: --output2
- id: singleton
  doc: 'Output file to which containing paired reads for which the mate has been discarded
    [default: BASENAME.singleton.truncated]'
  type: File
  inputBinding:
    prefix: --singleton
- id: output_collapsed
  doc: 'If --collapsed is set, contains overlapping mate-pairs which have been merged
    into a single read (PE mode) or reads for which the adapter was identified by
    a minimum overlap, indicating that the entire template molecule is present. This
    does not include which have subsequently been trimmed due to low-quality or ambiguous
    nucleotides [default: BASENAME.collapsed]'
  type: File
  inputBinding:
    prefix: --outputcollapsed
- id: output_collapsed_truncated
  doc: 'Collapsed reads (see --outputcollapsed) which were trimmed due the presence
    of low-quality or ambiguous nucleotides [default: BASENAME.collapsed.truncated]'
  type: File
  inputBinding:
    prefix: --outputcollapsedtruncated
- id: discarded
  doc: 'Contains reads discarded due to the --minlength, --maxlength or --maxns options
    [default: BASENAME.discarded]'
  type: File
  inputBinding:
    prefix: --discarded
- id: gzip
  doc: 'Enable gzip compression [default: off]'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: gzip_level
  doc: 'Compression level, 0 - 9 [default: 6]'
  type: string
  inputBinding:
    prefix: --gzip-level
- id: bzip_two
  doc: 'Enable bzip2 compression [default: off]'
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: bzip_two_level
  doc: 'Compression level, 0 - 9 [default: 9]'
  type: string
  inputBinding:
    prefix: --bzip2-level
- id: trim_ns
  doc: "If set, trim ambiguous bases (N) at 5'/3' termini [default: off]"
  type: boolean
  inputBinding:
    prefix: --trimns
- id: max_ns
  doc: 'Reads containing more ambiguous bases (N) than this number after trimming
    are discarded [default: 1000].'
  type: long
  inputBinding:
    prefix: --maxns
- id: trim_qualities
  doc: "If set, trim bases at 5'/3' termini with quality scores <= to --minquality\
    \ value [default: off]"
  type: boolean
  inputBinding:
    prefix: --trimqualities
- id: trim_windows
  doc: 'If set, quality trimming will be carried out using window based approach,
    where windows with an average quality less than --minquality will be trimmed.
    If >= 1, this value will be used as the window size. If the value is < 1, the
    value will be multiplied with the read length to determine a window size per read.
    If the resulting window size is 0 or larger than the read length, the read length
    is used as the window size. This option implies --trimqualities [default: <not
    set>].'
  type: long
  inputBinding:
    prefix: --trimwindows
- id: min_quality
  doc: 'Inclusive minimum; see --trimqualities for details [default: 2]'
  type: string
  inputBinding:
    prefix: --minquality
- id: preserve_five_p
  doc: 'If set, bases at the 5p will not be trimmed by --trimns, --trimqualities,
    and --trimwindows. Collapsed reads will not be quality trimmed when this option
    is enabled [default: 5p bases are trimmed]'
  type: boolean
  inputBinding:
    prefix: --preserve5p
- id: minlength
  doc: 'Reads shorter than this length are discarded following trimming [default:
    15].'
  type: long
  inputBinding:
    prefix: --minlength
- id: maxlength
  doc: 'Reads longer than this length are discarded following trimming [default: 4294967295].'
  type: long
  inputBinding:
    prefix: --maxlength
- id: collapse
  doc: 'When set, paired ended read alignments of --minalignmentlength or more bases
    are combined into a single consensus sequence, representing the complete insert,
    and written to either basename.collapsed or basename.collapsed.truncated (if trimmed
    due to low-quality bases following collapse); for single-ended reads, putative
    complete inserts are identified as having at least --minalignmentlength bases
    overlap with the adapter sequence, and are written to the the same files [default:
    off].'
  type: boolean
  inputBinding:
    prefix: --collapse
- id: collapse_deterministic
  doc: 'In standard --collapse mode, AdapterRemoval will randomly select one of two
    different overlapping bases if these have the same quality (otherwise it picks
    the highest quality base). With --collapse-deterministic, AdapterRemoval will
    instead set such bases to N. This option implies --collapse [default: off].'
  type: boolean
  inputBinding:
    prefix: --collapse-deterministic
- id: min_alignment_length
  doc: 'If --collapse is set, paired reads must overlap at least this number of bases
    to be collapsed, and single-ended reads must overlap at least this number of bases
    with the adapter to be considered complete template molecules [default: 11].'
  type: long
  inputBinding:
    prefix: --minalignmentlength
- id: seed
  doc: Sets the RNG seed used when choosing between bases with equal Phred scores
    when --collapse is enabled. This option is not available if more than one thread
    is used. If not specified, aseed is generated using the current time.
  type: string
  inputBinding:
    prefix: --seed
- id: barcode_list
  doc: 'List of barcodes or barcode pairs for single or double-indexed demultiplexing.
    Note that both indexes should be specified for both single-end and paired-end
    trimming, if double-indexed multiplexing was used, in order to ensure that the
    demultiplexed reads can be trimmed correctly [default: <not set>].'
  type: File
  inputBinding:
    prefix: --barcode-list
- id: barcode_mm
  doc: Maximum number of mismatches allowed when counting mismatches in both the mate
    1 and the mate 2 barcode for paired reads.
  type: string
  inputBinding:
    prefix: --barcode-mm
- id: barcode_mm_r_one
  doc: Maximum number of mismatches allowed for the mate 1 barcode; if not set, this
    value is equal to the '--barcode-mm' value; cannot be higher than the '--barcode-mm
    value'.
  type: string
  inputBinding:
    prefix: --barcode-mm-r1
- id: barcode_mm_r_two
  doc: Maximum number of mismatches allowed for the mate 2 barcode; if not set, this
    value is equal to the '--barcode-mm' value; cannot be higher than the '--barcode-mm
    value'.
  type: string
  inputBinding:
    prefix: --barcode-mm-r2
- id: demultiplex_only
  doc: Only carry out demultiplexing using the list of barcodes supplied with --barcode-list.
    No other processing is done.
  type: boolean
  inputBinding:
    prefix: --demultiplex-only
outputs: []
cwlVersion: v1.1
baseCommand:
- AdapterRemoval
