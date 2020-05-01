#!/usr/bin/env cwl-runner

baseCommand:
- gustaf
class: CommandLineTool
cwlVersion: v1.0
id: gustaf
inputs:
- doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  id: version_check
  inputBinding:
    prefix: --version-check
  type: boolean
- doc: 'Interchromosomal translocation penalty Default: 5.'
  id: trans_pen
  inputBinding:
    prefix: --transPen
  type: long
- doc: 'Inversion penalty Default: 5.'
  id: in_v_pen
  inputBinding:
    prefix: --invPen
  type: long
- doc: 'Intrachromosomal order change penalty Default: 0.'
  id: order_pen
  inputBinding:
    prefix: --orderPen
  type: long
- doc: 'Allowed overlap between matches Default: 0.5.'
  id: overlap_thresh
  inputBinding:
    prefix: --overlapThresh
  type: string
- doc: 'Allowed gap length between matches, default value corresponse to expected
    size of microindels (5 bp) Default: 5.'
  id: gap_thresh
  inputBinding:
    prefix: --gapThresh
  type: long
- doc: 'Allowed initial or ending gap length at begin and end of read with no breakpoint
    (e.g. due to sequencing errors at the end) Default: 15.'
  id: in_it_gap_thresh
  inputBinding:
    prefix: --initGapThresh
  type: long
- doc: 'Allowed initial or ending gap length at begin and end of read that creates
    a breakend/breakpoint (e.g. for reads extending into insertions) Default: 30.'
  id: break_end_thresh
  inputBinding:
    prefix: --breakendThresh
  type: long
- doc: 'Minimal length of (small) insertion/duplication with double overlap to be
    considered tandem repeat Default: 50.'
  id: tandem_thresh
  inputBinding:
    prefix: --tandemThresh
  type: long
- doc: 'Allowed difference in breakpoint position Default: 5.'
  id: breakpoint_pos_range
  inputBinding:
    prefix: --breakpoint-pos-range
  type: long
- doc: Disable inferring complex SVs
  id: complex_breakpoints
  inputBinding:
    prefix: --complex-breakpoints
  type: boolean
- doc: 'Number of supporting reads Default: 2.'
  id: support
  inputBinding:
    prefix: --support
  type: long
- doc: 'Number of supporting concordant mates Default: 2.'
  id: mate_support
  inputBinding:
    prefix: --mate-support
  type: long
- doc: Library size of paired-end reads
  id: library_size
  inputBinding:
    prefix: --library-size
  type: long
- doc: Library error (sd) of paired-end reads
  id: library_error
  inputBinding:
    prefix: --library-error
  type: long
- doc: Disable reverse complementing second mate pair input file.
  id: rev_compl
  inputBinding:
    prefix: --revcompl
  type: boolean
- doc: 'File of (stellar) matches Valid filetypes are: .gff and .GFF.'
  id: match_file
  inputBinding:
    prefix: --matchfile
  type: string
- doc: 'Name of gff breakpoint output file. Valid filetypes are: .txt and .gff. Default:
    breakpoints.gff.'
  id: gff_out
  inputBinding:
    prefix: --gffOut
  type: string
- doc: 'Name of vcf breakpoint output file. Valid filetypes are: .vcf and .txt. Default:
    breakpoints.vcf.'
  id: vcf_out
  inputBinding:
    prefix: --vcfOut
  type: string
- doc: 'Job/Queue name Default: .'
  id: job_name
  inputBinding:
    prefix: --jobName
  type: string
- doc: Enable graph output in dot format
  id: dots
  inputBinding:
    prefix: --dots
  type: boolean
- doc: 'Number of threads for parallelization of I/O. Default: 1.'
  id: num_threads
  inputBinding:
    prefix: --numThreads
  type: long
- doc: 'Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05.'
  id: epsilon
  inputBinding:
    prefix: --epsilon
  type: string
- doc: 'Minimal length of epsilon-matches. In range [0..inf]. Default: 100.'
  id: minlength
  inputBinding:
    prefix: --minLength
  type: long
- doc: Search only in forward strand of database.
  id: forward
  inputBinding:
    prefix: --forward
  type: boolean
- doc: Search only in reverse complement of database.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One
    of dna, dna5, rna, rna5, protein, and char.
  id: alphabet
  inputBinding:
    prefix: --alphabet
  type: string
- doc: Set verbosity mode.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Length of the q-grams (max 32). In range [1..32].
  id: km_er
  inputBinding:
    prefix: --kmer
  type: long
- doc: 'Maximal period of low complexity repeats to be filtered. Default: 1.'
  id: repeat_period
  inputBinding:
    prefix: --repeatPeriod
  type: long
- doc: 'Minimal length of low complexity repeats to be filtered. Default: 1000.'
  id: repeat_length
  inputBinding:
    prefix: --repeatLength
  type: long
- doc: 'k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  id: abundance_cut
  inputBinding:
    prefix: --abundanceCut
  type: string
- doc: 'Maximal x-drop for extension. Default: 5.'
  id: x_drop
  inputBinding:
    prefix: --xDrop
  type: string
- doc: 'Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal,
    and bandedGlobal. Default: exact.'
  id: verification
  inputBinding:
    prefix: --verification
  type: string
- doc: Maximal number of verified matches before disabling verification for one query
    sequence (default infinity). In range [0..inf].
  id: disable_thresh
  inputBinding:
    prefix: --disableThresh
  type: long
- doc: 'Maximal number of kept matches per query and database. If STELLAR finds more
    matches, only the longest ones are kept. Default: 50.'
  id: num_matches
  inputBinding:
    prefix: --numMatches
  type: long
- doc: 'Number of matches triggering removal of duplicates. Choose a smaller value
    for saving space. Default: 500.'
  id: sort_thresh
  inputBinding:
    prefix: --sortThresh
  type: long
