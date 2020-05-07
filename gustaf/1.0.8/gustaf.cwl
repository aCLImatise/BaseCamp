class: CommandLineTool
id: gustaf.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: trans_pen
  doc: 'Interchromosomal translocation penalty Default: 5.'
  type: long
  inputBinding:
    prefix: --transPen
- id: in_v_pen
  doc: 'Inversion penalty Default: 5.'
  type: long
  inputBinding:
    prefix: --invPen
- id: order_pen
  doc: 'Intrachromosomal order change penalty Default: 0.'
  type: long
  inputBinding:
    prefix: --orderPen
- id: overlap_thresh
  doc: 'Allowed overlap between matches Default: 0.5.'
  type: string
  inputBinding:
    prefix: --overlapThresh
- id: gap_thresh
  doc: 'Allowed gap length between matches, default value corresponse to expected
    size of microindels (5 bp) Default: 5.'
  type: long
  inputBinding:
    prefix: --gapThresh
- id: in_it_gap_thresh
  doc: 'Allowed initial or ending gap length at begin and end of read with no breakpoint
    (e.g. due to sequencing errors at the end) Default: 15.'
  type: long
  inputBinding:
    prefix: --initGapThresh
- id: break_end_thresh
  doc: 'Allowed initial or ending gap length at begin and end of read that creates
    a breakend/breakpoint (e.g. for reads extending into insertions) Default: 30.'
  type: long
  inputBinding:
    prefix: --breakendThresh
- id: tandem_thresh
  doc: 'Minimal length of (small) insertion/duplication with double overlap to be
    considered tandem repeat Default: 50.'
  type: long
  inputBinding:
    prefix: --tandemThresh
- id: breakpoint_pos_range
  doc: 'Allowed difference in breakpoint position Default: 5.'
  type: long
  inputBinding:
    prefix: --breakpoint-pos-range
- id: complex_breakpoints
  doc: Disable inferring complex SVs
  type: boolean
  inputBinding:
    prefix: --complex-breakpoints
- id: support
  doc: 'Number of supporting reads Default: 2.'
  type: long
  inputBinding:
    prefix: --support
- id: mate_support
  doc: 'Number of supporting concordant mates Default: 2.'
  type: long
  inputBinding:
    prefix: --mate-support
- id: library_size
  doc: Library size of paired-end reads
  type: long
  inputBinding:
    prefix: --library-size
- id: library_error
  doc: Library error (sd) of paired-end reads
  type: long
  inputBinding:
    prefix: --library-error
- id: rev_compl
  doc: Disable reverse complementing second mate pair input file.
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: match_file
  doc: 'File of (stellar) matches Valid filetypes are: .gff and .GFF.'
  type: string
  inputBinding:
    prefix: --matchfile
- id: gff_out
  doc: 'Name of gff breakpoint output file. Valid filetypes are: .txt and .gff. Default:
    breakpoints.gff.'
  type: string
  inputBinding:
    prefix: --gffOut
- id: vcf_out
  doc: 'Name of vcf breakpoint output file. Valid filetypes are: .vcf and .txt. Default:
    breakpoints.vcf.'
  type: string
  inputBinding:
    prefix: --vcfOut
- id: job_name
  doc: 'Job/Queue name Default: .'
  type: string
  inputBinding:
    prefix: --jobName
- id: dots
  doc: Enable graph output in dot format
  type: boolean
  inputBinding:
    prefix: --dots
- id: num_threads
  doc: 'Number of threads for parallelization of I/O. Default: 1.'
  type: long
  inputBinding:
    prefix: --numThreads
- id: epsilon
  doc: 'Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05.'
  type: string
  inputBinding:
    prefix: --epsilon
- id: minlength
  doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --minLength
- id: forward
  doc: Search only in forward strand of database.
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Search only in reverse complement of database.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: alphabet
  doc: Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One
    of dna, dna5, rna, rna5, protein, and char.
  type: string
  inputBinding:
    prefix: --alphabet
- id: verbose
  doc: Set verbosity mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: km_er
  doc: Length of the q-grams (max 32). In range [1..32].
  type: long
  inputBinding:
    prefix: --kmer
- id: repeat_period
  doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  type: long
  inputBinding:
    prefix: --repeatPeriod
- id: repeat_length
  doc: 'Minimal length of low complexity repeats to be filtered. Default: 1000.'
  type: long
  inputBinding:
    prefix: --repeatLength
- id: abundance_cut
  doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: string
  inputBinding:
    prefix: --abundanceCut
- id: x_drop
  doc: 'Maximal x-drop for extension. Default: 5.'
  type: string
  inputBinding:
    prefix: --xDrop
- id: verification
  doc: 'Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal,
    and bandedGlobal. Default: exact.'
  type: string
  inputBinding:
    prefix: --verification
- id: disable_thresh
  doc: Maximal number of verified matches before disabling verification for one query
    sequence (default infinity). In range [0..inf].
  type: long
  inputBinding:
    prefix: --disableThresh
- id: num_matches
  doc: 'Maximal number of kept matches per query and database. If STELLAR finds more
    matches, only the longest ones are kept. Default: 50.'
  type: long
  inputBinding:
    prefix: --numMatches
- id: sort_thresh
  doc: 'Number of matches triggering removal of duplicates. Choose a smaller value
    for saving space. Default: 500.'
  type: long
  inputBinding:
    prefix: --sortThresh
outputs: []
cwlVersion: v1.1
baseCommand:
- gustaf
