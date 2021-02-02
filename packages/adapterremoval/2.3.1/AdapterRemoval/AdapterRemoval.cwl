class: CommandLineTool
id: AdapterRemoval.cwl
inputs:
- id: in_file_one
  doc: "Input files containing mate 1 reads or single-ended reads; one or\nmore files\
    \ may be listed [REQUIRED]."
  type: File[]
  inputBinding:
    prefix: --file1
- id: in_file_two
  doc: "[FILE ...]\nInput files containing mate 2 reads; if used, then the same number\
    \ of\nfiles as --file1 must be listed [OPTIONAL]."
  type: boolean
  inputBinding:
    prefix: --file2
- id: in_identify_adapters
  doc: "Attempt to identify the adapter pair of PE reads, by searching for\noverlapping\
    \ mate reads [default: off]."
  type: boolean
  inputBinding:
    prefix: --identify-adapters
- id: in_threads
  doc: 'Maximum number of threads [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_quality_base
  doc: "Quality base used to encode Phred scores in input; either 33, 64, or\nsolexa\
    \ [default: 33]."
  type: long
  inputBinding:
    prefix: --qualitybase
- id: in_quality_base_output
  doc: "Quality base used to encode Phred scores in output; either 33, 64, or\nsolexa.\
    \ By default, reads will be written in the same format as the\nthat specified\
    \ using --qualitybase."
  type: long
  inputBinding:
    prefix: --qualitybase-output
- id: in_quality_max
  doc: "Specifies the maximum Phred score expected in input files, and used\nwhen\
    \ writing output. ASCII encoded values are limited to the\ncharacters '!' (ASCII\
    \ = 33) to '~' (ASCII = 126), meaning that\npossible scores are 0 - 93 with offset\
    \ 33, and 0 - 62 for offset 64\nand Solexa scores [default: 41]."
  type: long
  inputBinding:
    prefix: --qualitymax
- id: in_mate_separator
  doc: "Character separating the mate number (1 or 2) from the read name in\nFASTQ\
    \ records [default: '/']."
  type: long
  inputBinding:
    prefix: --mate-separator
- id: in_interleaved
  doc: "This option enables both the --interleaved-input option and the\n--interleaved-output\
    \ option [default: off]."
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: in_interleaved_input
  doc: "The (single) input file provided contains both the mate 1 and mate 2\nreads,\
    \ one pair after the other, with one mate 1 reads followed by\none mate 2 read.\
    \ This option is implied by the --interleaved option\n[default: off]."
  type: boolean
  inputBinding:
    prefix: --interleaved-input
- id: in_interleaved_output
  doc: "If set, trimmed paired-end reads are written to a single file\ncontaining\
    \ mate 1 and mate 2 reads, one pair after the other. This\noption is implied by\
    \ the --interleaved option [default: off]."
  type: boolean
  inputBinding:
    prefix: --interleaved-output
- id: in_combined_output
  doc: "If set, all reads are written to the same file(s), specified by\n--output1\
    \ and --output2 (--output1 only if --interleaved-output is\nnot set). Discarded\
    \ reads are replaced with a single 'N' with Phred\nscore 0 [default: off]."
  type: File
  inputBinding:
    prefix: --combined-output
- id: in_basename
  doc: "Default prefix for all output files for which no filename was\nexplicitly\
    \ set [default: your_output]."
  type: File
  inputBinding:
    prefix: --basename
- id: in_settings
  doc: "Output file containing information on the parameters used in the run\nas well\
    \ as overall statistics on the reads after trimming [default:\nBASENAME.settings]"
  type: File
  inputBinding:
    prefix: --settings
- id: in_output_one
  doc: "Output file containing trimmed mate1 reads [default:\nBASENAME.pair1.truncated\
    \ (PE), BASENAME.truncated (SE), or\nBASENAME.paired.truncated (interleaved PE)]"
  type: File
  inputBinding:
    prefix: --output1
- id: in_output_two
  doc: "Output file containing trimmed mate 2 reads [default:\nBASENAME.pair2.truncated\
    \ (only used in PE mode, but not if\n--interleaved-output is enabled)]"
  type: File
  inputBinding:
    prefix: --output2
- id: in_singleton
  doc: "Output file to which containing paired reads for which the mate has\nbeen\
    \ discarded [default: BASENAME.singleton.truncated]"
  type: File
  inputBinding:
    prefix: --singleton
- id: in_output_collapsed
  doc: "If --collapsed is set, contains overlapping mate-pairs which have\nbeen merged\
    \ into a single read (PE mode) or reads for which the\nadapter was identified\
    \ by a minimum overlap, indicating that the\nentire template molecule is present.\
    \ This does not include which have\nsubsequently been trimmed due to low-quality\
    \ or ambiguous nucleotides\n[default: BASENAME.collapsed]"
  type: File
  inputBinding:
    prefix: --outputcollapsed
- id: in_output_collapsed_truncated
  doc: "Collapsed reads (see --outputcollapsed) which were trimmed due the\npresence\
    \ of low-quality or ambiguous nucleotides [default:\nBASENAME.collapsed.truncated]"
  type: File
  inputBinding:
    prefix: --outputcollapsedtruncated
- id: in_discarded
  doc: "Contains reads discarded due to the --minlength, --maxlength or\n--maxns options\
    \ [default: BASENAME.discarded]"
  type: File
  inputBinding:
    prefix: --discarded
- id: in_gzip
  doc: 'Enable gzip compression [default: off]'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_gzip_level
  doc: 'Compression level, 0 - 9 [default: 6]'
  type: long
  inputBinding:
    prefix: --gzip-level
- id: in_bzip_two
  doc: 'Enable bzip2 compression [default: off]'
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: in_bzip_two_level
  doc: 'Compression level, 0 - 9 [default: 9]'
  type: long
  inputBinding:
    prefix: --bzip2-level
- id: in_adapter_one
  doc: "Adapter sequence expected to be found in mate 1 reads [default:\nAGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
  type: long
  inputBinding:
    prefix: --adapter1
- id: in_adapter_two
  doc: "Adapter sequence expected to be found in mate 2 reads [default:\nAGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT]."
  type: long
  inputBinding:
    prefix: --adapter2
- id: in_adapter_list
  doc: "Read table of white-space separated adapters pairs, used as if the\nfirst\
    \ column was supplied to --adapter1, and the second column was\nsupplied to --adapter2;\
    \ only the first adapter in each pair is\nrequired SE trimming mode [default:\
    \ <not set>]."
  type: File
  inputBinding:
    prefix: --adapter-list
- id: in_min_adapter_overlap
  doc: "In single-end mode, reads are only trimmed if the overlap between\nread and\
    \ the adapter is at least X bases long, not counting ambiguous\nnucleotides (N);\
    \ this is independent of the --minalignmentlength when\nusing --collapse, allowing\
    \ a conservative selection of putative\ncomplete inserts while ensuring that all\
    \ possible adapter\ncontamination is trimmed [default: 0]."
  type: long
  inputBinding:
    prefix: --minadapteroverlap
- id: in_mm
  doc: "Max error-rate when aligning reads and/or adapters. If > 1, the max\nerror-rate\
    \ is set to 1 / MISMATCH_RATE; if < 0, the defaults are\nused, otherwise the user-supplied\
    \ value is used directly [default:\n1/3 for trimming; 1/10 when identifying adapters]."
  type: long
  inputBinding:
    prefix: --mm
- id: in_shift
  doc: "Consider alignments where up to N nucleotides are missing from the 5'\ntermini\
    \ [default: 2]."
  type: long
  inputBinding:
    prefix: --shift
- id: in_trim_five_p
  doc: "[N]\nTrim the 5' of reads by a fixed amount after removing adapters, but\n\
    before carrying out quality based trimming. Specify one value to trim\nmate 1\
    \ and mate 2 reads the same amount, or two values separated by a\nspace to trim\
    \ each mate different amounts [default: no trimming]."
  type: long
  inputBinding:
    prefix: --trim5p
- id: in_trim_three_p
  doc: "[N]\nTrim the 3' of reads by a fixed amount. See --trim5p."
  type: long
  inputBinding:
    prefix: --trim3p
- id: in_trim_ns
  doc: "If set, trim ambiguous bases (N) at 5'/3' termini [default: off]"
  type: boolean
  inputBinding:
    prefix: --trimns
- id: in_max_ns
  doc: "Reads containing more ambiguous bases (N) than this number after\ntrimming\
    \ are discarded [default: 1000]."
  type: long
  inputBinding:
    prefix: --maxns
- id: in_trim_qualities
  doc: "If set, trim bases at 5'/3' termini with quality scores <= to\n--minquality\
    \ value [default: off]"
  type: boolean
  inputBinding:
    prefix: --trimqualities
- id: in_trim_windows
  doc: "If set, quality trimming will be carried out using window based\napproach,\
    \ where windows with an average quality less than\n--minquality will be trimmed.\
    \ If >= 1, this value will be used as the\nwindow size. If the value is < 1, the\
    \ value will be multiplied with\nthe read length to determine a window size per\
    \ read. If the resulting\nwindow size is 0 or larger than the read length, the\
    \ read length is\nused as the window size. This option implies --trimqualities\n\
    [default: <not set>]."
  type: long
  inputBinding:
    prefix: --trimwindows
- id: in_min_quality
  doc: 'Inclusive minimum; see --trimqualities for details [default: 2]'
  type: long
  inputBinding:
    prefix: --minquality
- id: in_preserve_five_p
  doc: "If set, bases at the 5p will not be trimmed by --trimns,\n--trimqualities,\
    \ and --trimwindows. Collapsed reads will not be\nquality trimmed when this option\
    \ is enabled [default: 5p bases are\ntrimmed]"
  type: boolean
  inputBinding:
    prefix: --preserve5p
- id: in_minlength
  doc: "Reads shorter than this length are discarded following trimming\n[default:\
    \ 15]."
  type: long
  inputBinding:
    prefix: --minlength
- id: in_maxlength
  doc: "Reads longer than this length are discarded following trimming\n[default:\
    \ 4294967295]."
  type: long
  inputBinding:
    prefix: --maxlength
- id: in_collapse
  doc: "When set, paired ended read alignments of --minalignmentlength or\nmore bases\
    \ are combined into a single consensus sequence,\nrepresenting the complete insert,\
    \ and written to either\nbasename.collapsed or basename.collapsed.truncated (if\
    \ trimmed due to\nlow-quality bases following collapse); for single-ended reads,\n\
    putative complete inserts are identified as having at least\n--minalignmentlength\
    \ bases overlap with the adapter sequence, and are\nwritten to the the same files\
    \ [default: off]."
  type: boolean
  inputBinding:
    prefix: --collapse
- id: in_collapse_deterministic
  doc: "In standard --collapse mode, AdapterRemoval will randomly select one\nof two\
    \ different overlapping bases if these have the same quality\n(otherwise it picks\
    \ the highest quality base). With\n--collapse-deterministic, AdapterRemoval will\
    \ instead set such bases\nto N. This option implies --collapse [default: off]."
  type: boolean
  inputBinding:
    prefix: --collapse-deterministic
- id: in_min_alignment_length
  doc: "If --collapse is set, paired reads must overlap at least this number\nof bases\
    \ to be collapsed, and single-ended reads must overlap at\nleast this number of\
    \ bases with the adapter to be considered complete\ntemplate molecules [default:\
    \ 11]."
  type: long
  inputBinding:
    prefix: --minalignmentlength
- id: in_seed
  doc: "Sets the RNG seed used when choosing between bases with equal Phred\nscores\
    \ when --collapse is enabled. This option is not available if\nmore than one thread\
    \ is used. If not specified, aseed is generated\nusing the current time."
  type: string
  inputBinding:
    prefix: --seed
- id: in_barcode_list
  doc: "List of barcodes or barcode pairs for single or double-indexed\ndemultiplexing.\
    \ Note that both indexes should be specified for both\nsingle-end and paired-end\
    \ trimming, if double-indexed multiplexing\nwas used, in order to ensure that\
    \ the demultiplexed reads can be\ntrimmed correctly [default: <not set>]."
  type: File
  inputBinding:
    prefix: --barcode-list
- id: in_barcode_mm
  doc: "Maximum number of mismatches allowed when counting mismatches in both\nthe\
    \ mate 1 and the mate 2 barcode for paired reads."
  type: long
  inputBinding:
    prefix: --barcode-mm
- id: in_barcode_mm_r_one
  doc: "Maximum number of mismatches allowed for the mate 1 barcode; if not\nset,\
    \ this value is equal to the '--barcode-mm' value; cannot be\nhigher than the\
    \ '--barcode-mm value'."
  type: long
  inputBinding:
    prefix: --barcode-mm-r1
- id: in_barcode_mm_r_two
  doc: "Maximum number of mismatches allowed for the mate 2 barcode; if not\nset,\
    \ this value is equal to the '--barcode-mm' value; cannot be\nhigher than the\
    \ '--barcode-mm value'."
  type: long
  inputBinding:
    prefix: --barcode-mm-r2
- id: in_demultiplex_only
  doc: "Only carry out demultiplexing using the list of barcodes supplied\nwith --barcode-list.\
    \ No other processing is done.\n"
  type: boolean
  inputBinding:
    prefix: --demultiplex-only
- id: in_eight_eight_dot
  doc: http://bmcresnotes.biomedcentral.com/articles/10.1186/s13104-016-1900-2
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_combined_output
  doc: "If set, all reads are written to the same file(s), specified by\n--output1\
    \ and --output2 (--output1 only if --interleaved-output is\nnot set). Discarded\
    \ reads are replaced with a single 'N' with Phred\nscore 0 [default: off]."
  type: File
  outputBinding:
    glob: $(inputs.in_combined_output)
- id: out_basename
  doc: "Default prefix for all output files for which no filename was\nexplicitly\
    \ set [default: your_output]."
  type: File
  outputBinding:
    glob: $(inputs.in_basename)
- id: out_settings
  doc: "Output file containing information on the parameters used in the run\nas well\
    \ as overall statistics on the reads after trimming [default:\nBASENAME.settings]"
  type: File
  outputBinding:
    glob: $(inputs.in_settings)
- id: out_output_one
  doc: "Output file containing trimmed mate1 reads [default:\nBASENAME.pair1.truncated\
    \ (PE), BASENAME.truncated (SE), or\nBASENAME.paired.truncated (interleaved PE)]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_one)
- id: out_output_two
  doc: "Output file containing trimmed mate 2 reads [default:\nBASENAME.pair2.truncated\
    \ (only used in PE mode, but not if\n--interleaved-output is enabled)]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_two)
- id: out_singleton
  doc: "Output file to which containing paired reads for which the mate has\nbeen\
    \ discarded [default: BASENAME.singleton.truncated]"
  type: File
  outputBinding:
    glob: $(inputs.in_singleton)
cwlVersion: v1.1
baseCommand:
- AdapterRemoval
