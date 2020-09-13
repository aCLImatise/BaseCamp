class: CommandLineTool
id: ../../../validateFiles.cwl
inputs:
- id: in_type
  doc: '='
  type: boolean
  inputBinding:
    prefix: -type
- id: in_as
  doc: "If you have extra \"bedPlus\" fields, it's great to put a definition\nof each\
    \ field in a row in AutoSql format here. Applies to bed-related types."
  type: string
  inputBinding:
    prefix: -as
- id: in_tab
  doc: "If set, expect fields to be tab separated, normally\nexpects white space separator.\
    \ Applies to bed-related types."
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_chrom_db
  doc: "Specify DB containing chromInfo table to validate chrom names\nand sizes"
  type: string
  inputBinding:
    prefix: -chromDb
- id: in_chrom_info
  doc: Specify chromInfo file to validate chrom names and sizes
  type: File
  inputBinding:
    prefix: -chromInfo
- id: in_color_space
  doc: "Sequences include colorspace values [0-3] (can be used\nwith formats such\
    \ as tagAlign and pairedTagAlign)"
  type: boolean
  inputBinding:
    prefix: -colorSpace
- id: in_is_sorted
  doc: Input is sorted by chrom, only affects types tagAlign and pairedTagAlign
  type: boolean
  inputBinding:
    prefix: -isSorted
- id: in_do_report
  doc: Output report in filename.report
  type: File
  inputBinding:
    prefix: -doReport
- id: in_version
  doc: Print version
  type: boolean
  inputBinding:
    prefix: -version
- id: in_genome
  doc: "REQUIRED to validate sequence mappings match the genome specified\nin the\
    \ .2bit file. (BAM, tagAlign, pairedTagAlign)"
  type: File
  inputBinding:
    prefix: -genome
- id: in_n_match
  doc: N's do not count as a mismatch
  type: boolean
  inputBinding:
    prefix: -nMatch
- id: in_match_first
  doc: Only check the first N bases of the sequence
  type: string
  inputBinding:
    prefix: -matchFirst
- id: in_mismatches
  doc: Maximum number of mismatches in sequence (or read pair)
  type: long
  inputBinding:
    prefix: -mismatches
- id: in_mismatch_total_quality
  doc: Maximum total quality score at mismatching positions
  type: string
  inputBinding:
    prefix: -mismatchTotalQuality
- id: in_mm_per_pair
  doc: "Check either pair dont exceed mismatch count if validating\npairedTagAlign\
    \ files (default is the total for the pair)"
  type: boolean
  inputBinding:
    prefix: -mmPerPair
- id: in_mm_check_one_inn
  doc: Check mismatches in only one in 'n' lines (default=1, all)
  type: long
  inputBinding:
    prefix: -mmCheckOneInN
- id: in_allow_other
  doc: Allow chromosomes that aren't native in BAM's
  type: boolean
  inputBinding:
    prefix: -allowOther
- id: in_allow_bad_length
  doc: Allow chromosomes that have the wrong length in BAM
  type: boolean
  inputBinding:
    prefix: -allowBadLength
- id: in_complement_minus
  doc: Complement the query sequence on the minus strand (for testing BAM)
  type: boolean
  inputBinding:
    prefix: -complementMinus
- id: in_bam_percent
  doc: Percentage of BAM alignments that must be compliant
  type: string
  inputBinding:
    prefix: -bamPercent
- id: in_private_data
  doc: Private data so empty sequence is tolerated
  type: boolean
  inputBinding:
    prefix: -privateData
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_do_report
  doc: Output report in filename.report
  type: File
  outputBinding:
    glob: $(inputs.in_do_report)
cwlVersion: v1.1
baseCommand:
- validateFiles
