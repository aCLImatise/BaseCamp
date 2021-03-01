class: CommandLineTool
id: edena.cwl
inputs:
- id: in_n_threads
  doc: Number of threads to use. Default 2
  type: long?
  inputBinding:
    prefix: -nThreads
- id: in_single_end
  doc: "<file2> ...\nReads file(s) in FASTA or FASTQ format.\nSeveral files can be\
    \ specified"
  type: File?
  inputBinding:
    prefix: -singleEnd
- id: in_dr_pairs
  doc: "<file1_2> <file2_1> <file_2_2> ...\nDirect-Reverse paired reads files. Several\n\
    pairs of files can be specified."
  type: File?
  inputBinding:
    prefix: -DRpairs
- id: in_mate_pairs
  doc: "<file1_2> <file2_1> <file_2_2> ...\nReverse-Direct paired reads files. Several\n\
    pairs of files can be specified."
  type: File?
  inputBinding:
    prefix: -matePairs
- id: in_prefix
  doc: Prefix for the output files. Default is "out".
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_min_overlap
  doc: "Minimum size of the overlaps to compute.\nDefault is half of the reads length."
  type: long?
  inputBinding:
    prefix: -minOverlap
- id: in_truncate
  doc: Truncate the 3' end of the reads TO the specified
  type: long?
  inputBinding:
    prefix: -truncate
- id: in_eden_a_file
  doc: Edena overlap (.ovl) file. Required.
  type: File?
  inputBinding:
    prefix: -edenaFile
- id: in_overlap_cut_off
  doc: "Only consider overlaps >= than the specified size.\nThe optimal setting of\
    \ this parameter depends on the\ncoverage that was achieved by the sequencing\
    \ run.\nYou should therefore try different values in order\nto get the optimal\
    \ one."
  type: long?
  inputBinding:
    prefix: -overlapCutoff
- id: in_min_contig_size
  doc: "Minimum size of the contigs to output.\nDefault is 1.5*readLength."
  type: long?
  inputBinding:
    prefix: -minContigSize
- id: in_contextual_cleaning
  doc: <yes/no>   Contextual cleaning of spurious edges.
  type: boolean?
  inputBinding:
    prefix: -contextualCleaning
- id: in_min_coverage
  doc: "Minimum required coverage for the contigs. This\nvalue is automatically determined\
    \ if not specified."
  type: long?
  inputBinding:
    prefix: -minCoverage
- id: in_short_pe_horizon
  doc: "Maximum search distance for short >< paired-end\nsampling. Default: 1000"
  type: long?
  inputBinding:
    prefix: -shortPeHorizon
- id: in_long_pe_horizon
  doc: "Maximum search distance for long <> paired-end\nsampling. Default: 15000"
  type: long?
  inputBinding:
    prefix: -longPeHorizon
- id: in_pe_horizon
  doc: "obsolete: Maximum search distance for both short\nand long paired-end reads\
    \ sampling."
  type: long?
  inputBinding:
    prefix: -peHorizon
- id: in_trim_red
  doc: "By default, possible redundant sequences, caused by\nunresolved repeats, are\
    \ trimmed from contigs ends.\nSetting this flag to 'no' allows keeping such\n\
    redundancies up to the length of the largest insert\nsize (maxJump). !! setting\
    \ this setting to 'no'\nproduces an artificially increased assembly size !!"
  type: long?
  inputBinding:
    prefix: -trimRed
- id: in_max_red
  doc: "Max ending redundancy length. Default: 0 (equivalent\nto '-trimRed yes'. Overrides\
    \ -trimRed."
  type: long?
  inputBinding:
    prefix: -maxRed
- id: in_dead_ends
  doc: "Maximum length for dead-end paths removal.\nDefault value is set to 2*readLength-1."
  type: long?
  inputBinding:
    prefix: -deadEnds
- id: in_discard_non_usable
  doc: "<yes/no>   Reads that are involved in orphan nodes smaller than\n1.5*readLength\
    \ are considered as \"non-usable\".\nThis filter discards such nodes. Default:\
    \ enabled"
  type: boolean?
  inputBinding:
    prefix: -discardNonUsable
- id: in_trim
  doc: "Coverage cutoff for contigs ends:\nContig ends ending in a gap may contain\
    \ errors due\nto low coverage. This option trim a few bases from\nthese ends until\
    \ a minimum coverage is reached.\nDefault is 4. Ends are not trimmed if set to\
    \ 1."
  type: long?
  inputBinding:
    prefix: -trim
- id: in_shell
  doc: "Interactive shell. Allows querying the assembly\ngraph."
  type: boolean?
  inputBinding:
    prefix: -shell
- id: in_length
  doc: '2) Assembler mode:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- edena
