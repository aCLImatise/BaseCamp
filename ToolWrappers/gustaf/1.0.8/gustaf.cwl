class: CommandLineTool
id: gustaf.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_trans_pen
  doc: 'Interchromosomal translocation penalty Default: 5.'
  type: long
  inputBinding:
    prefix: --transPen
- id: in_in_v_pen
  doc: 'Inversion penalty Default: 5.'
  type: long
  inputBinding:
    prefix: --invPen
- id: in_order_pen
  doc: 'Intrachromosomal order change penalty Default: 0.'
  type: long
  inputBinding:
    prefix: --orderPen
- id: in_overlap_thresh
  doc: 'Allowed overlap between matches Default: 0.5.'
  type: double
  inputBinding:
    prefix: --overlapThresh
- id: in_gap_thresh
  doc: "Allowed gap length between matches, default value corresponse to\nexpected\
    \ size of microindels (5 bp) Default: 5."
  type: long
  inputBinding:
    prefix: --gapThresh
- id: in_in_it_gap_thresh
  doc: "Allowed initial or ending gap length at begin and end of read with\nno breakpoint\
    \ (e.g. due to sequencing errors at the end) Default:\n15."
  type: long
  inputBinding:
    prefix: --initGapThresh
- id: in_break_end_thresh
  doc: "Allowed initial or ending gap length at begin and end of read that\ncreates\
    \ a breakend/breakpoint (e.g. for reads extending into\ninsertions) Default: 30."
  type: long
  inputBinding:
    prefix: --breakendThresh
- id: in_tandem_thresh
  doc: "Minimal length of (small) insertion/duplication with double overlap\nto be\
    \ considered tandem repeat Default: 50."
  type: long
  inputBinding:
    prefix: --tandemThresh
- id: in_breakpoint_pos_range
  doc: 'Allowed difference in breakpoint position Default: 5.'
  type: long
  inputBinding:
    prefix: --breakpoint-pos-range
- id: in_complex_breakpoints
  doc: Disable inferring complex SVs
  type: boolean
  inputBinding:
    prefix: --complex-breakpoints
- id: in_support
  doc: 'Number of supporting reads Default: 2.'
  type: long
  inputBinding:
    prefix: --support
- id: in_mate_support
  doc: 'Number of supporting concordant mates Default: 2.'
  type: long
  inputBinding:
    prefix: --mate-support
- id: in_library_size
  doc: Library size of paired-end reads
  type: long
  inputBinding:
    prefix: --library-size
- id: in_library_error
  doc: Library error (sd) of paired-end reads
  type: long
  inputBinding:
    prefix: --library-error
- id: in_rev_compl
  doc: Disable reverse complementing second mate pair input file.
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: in_match_file
  doc: 'File of (stellar) matches Valid filetypes are: .gff and .GFF.'
  type: File
  inputBinding:
    prefix: --matchfile
- id: in_gff_out
  doc: "Name of gff breakpoint output file. Valid filetypes are: .txt and\n.gff. Default:\
    \ breakpoints.gff."
  type: File
  inputBinding:
    prefix: --gffOut
- id: in_vcf_out
  doc: "Name of vcf breakpoint output file. Valid filetypes are: .vcf and\n.txt. Default:\
    \ breakpoints.vcf."
  type: File
  inputBinding:
    prefix: --vcfOut
- id: in_job_name
  doc: 'Job/Queue name Default: .'
  type: string
  inputBinding:
    prefix: --jobName
- id: in_dots
  doc: Enable graph output in dot format
  type: boolean
  inputBinding:
    prefix: --dots
- id: in_num_threads
  doc: 'Number of threads for parallelization of I/O. Default: 1.'
  type: long
  inputBinding:
    prefix: --numThreads
- id: in_epsilon
  doc: "Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default:\n0.05."
  type: long
  inputBinding:
    prefix: --epsilon
- id: in_minlength
  doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --minLength
- id: in_forward
  doc: Search only in forward strand of database.
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Search only in reverse complement of database.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_alphabet
  doc: "Alphabet type of input sequences (dna, rna, dna5, rna5, protein,\nchar). One\
    \ of dna, dna5, rna, rna5, protein, and char."
  type: long
  inputBinding:
    prefix: --alphabet
- id: in_verbose
  doc: Set verbosity mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_km_er
  doc: Length of the q-grams (max 32). In range [1..32].
  type: long
  inputBinding:
    prefix: --kmer
- id: in_repeat_period
  doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  type: long
  inputBinding:
    prefix: --repeatPeriod
- id: in_repeat_length
  doc: "Minimal length of low complexity repeats to be filtered. Default:\n1000."
  type: long
  inputBinding:
    prefix: --repeatLength
- id: in_abundance_cut
  doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: double
  inputBinding:
    prefix: --abundanceCut
- id: in_x_drop
  doc: 'Maximal x-drop for extension. Default: 5.'
  type: long
  inputBinding:
    prefix: --xDrop
- id: in_verification
  doc: "Verification strategy: exact or bestLocal or bandedGlobal One of\nexact, bestLocal,\
    \ and bandedGlobal. Default: exact."
  type: string
  inputBinding:
    prefix: --verification
- id: in_disable_thresh
  doc: "Maximal number of verified matches before disabling verification for\none\
    \ query sequence (default infinity). In range [0..inf]."
  type: long
  inputBinding:
    prefix: --disableThresh
- id: in_num_matches
  doc: "Maximal number of kept matches per query and database. If STELLAR\nfinds more\
    \ matches, only the longest ones are kept. Default: 50."
  type: long
  inputBinding:
    prefix: --numMatches
- id: in_sort_thresh
  doc: "Number of matches triggering removal of duplicates. Choose a smaller\nvalue\
    \ for saving space. Default: 500."
  type: long
  inputBinding:
    prefix: --sortThresh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gff_out
  doc: "Name of gff breakpoint output file. Valid filetypes are: .txt and\n.gff. Default:\
    \ breakpoints.gff."
  type: File
  outputBinding:
    glob: $(inputs.in_gff_out)
- id: out_vcf_out
  doc: "Name of vcf breakpoint output file. Valid filetypes are: .vcf and\n.txt. Default:\
    \ breakpoints.vcf."
  type: File
  outputBinding:
    glob: $(inputs.in_vcf_out)
cwlVersion: v1.1
baseCommand:
- gustaf
