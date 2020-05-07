class: CommandLineTool
id: validateFiles.cwl
inputs:
- id: broad_peak
  doc: ': ENCODE Peak formats'
  type: string
  inputBinding:
    position: 0
- id: narrow_peak
  doc: These are specialized bedN+P formats.
  type: string
  inputBinding:
    position: 1
- id: gapped_peak
  doc: See http://genomewiki.soe.ucsc.edu/EncodeDCC/index.php/File_Formats
  type: string
  inputBinding:
    position: 2
- id: bed_graph
  doc: ':  BED Graph'
  type: string
  inputBinding:
    position: 3
- id: rcc
  doc: ':  NanoString RCC'
  type: string
  inputBinding:
    position: 4
- id: id_at
  doc: ':  Illumina IDAT'
  type: string
  inputBinding:
    position: 5
- id: as
  doc: If you have extra "bedPlus" fields, it's great to put a definition of each
    field in a row in AutoSql format here. Applies to bed-related types.
  type: string
  inputBinding:
    prefix: -as
- id: tab
  doc: If set, expect fields to be tab separated, normally expects white space separator.
    Applies to bed-related types.
  type: boolean
  inputBinding:
    prefix: -tab
- id: chrom_db
  doc: Specify DB containing chromInfo table to validate chrom names and sizes
  type: string
  inputBinding:
    prefix: -chromDb
- id: chrom_info
  doc: Specify chromInfo file to validate chrom names and sizes
  type: File
  inputBinding:
    prefix: -chromInfo
- id: color_space
  doc: Sequences include colorspace values [0-3] (can be used  with formats such as
    tagAlign and pairedTagAlign)
  type: boolean
  inputBinding:
    prefix: -colorSpace
- id: is_sorted
  doc: Input is sorted by chrom, only affects types tagAlign and pairedTagAlign
  type: boolean
  inputBinding:
    prefix: -isSorted
- id: do_report
  doc: Output report in filename.report
  type: boolean
  inputBinding:
    prefix: -doReport
- id: version
  doc: Print version
  type: boolean
  inputBinding:
    prefix: -version
- id: genome
  doc: /to/hg18.2bit    REQUIRED to validate sequence mappings match the genome specified
    in the .2bit file. (BAM, tagAlign, pairedTagAlign)
  type: File
  inputBinding:
    prefix: -genome
- id: n_match
  doc: N's do not count as a mismatch
  type: boolean
  inputBinding:
    prefix: -nMatch
- id: match_first
  doc: Only check the first N bases of the sequence
  type: string
  inputBinding:
    prefix: -matchFirst
- id: mismatches
  doc: 'Maximum number of mismatches in sequence (or read pair) '
  type: string
  inputBinding:
    prefix: -mismatches
- id: mismatch_total_quality
  doc: Maximum total quality score at mismatching positions
  type: string
  inputBinding:
    prefix: -mismatchTotalQuality
- id: mm_per_pair
  doc: Check either pair dont exceed mismatch count if validating pairedTagAlign files
    (default is the total for the pair)
  type: boolean
  inputBinding:
    prefix: -mmPerPair
- id: mm_check_one_inn
  doc: Check mismatches in only one in 'n' lines (default=1, all)
  type: string
  inputBinding:
    prefix: -mmCheckOneInN
- id: allow_other
  doc: Allow chromosomes that aren't native in BAM's
  type: boolean
  inputBinding:
    prefix: -allowOther
- id: allow_bad_length
  doc: Allow chromosomes that have the wrong length in BAM
  type: boolean
  inputBinding:
    prefix: -allowBadLength
- id: complement_minus
  doc: Complement the query sequence on the minus strand (for testing BAM)
  type: boolean
  inputBinding:
    prefix: -complementMinus
- id: bam_percent
  doc: Percentage of BAM alignments that must be compliant
  type: string
  inputBinding:
    prefix: -bamPercent
- id: private_data
  doc: Private data so empty sequence is tolerated
  type: boolean
  inputBinding:
    prefix: -privateData
outputs: []
cwlVersion: v1.1
baseCommand:
- validateFiles
