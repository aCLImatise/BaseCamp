class: CommandLineTool
id: edena.cwl
inputs:
- id: in_n_threads
  doc: "Number of threads to use. Default 2\n-r\n-singleEnd <file1> <file2> ...\n\
    Reads file(s) in FASTA or FASTQ format.\nSeveral files can be specified\n-DRpairs\n\
    -paired <file1_1> <file1_2> <file2_1> <file_2_2> ...\nDirect-Reverse paired reads\
    \ files. Several\npairs of files can be specified.\n-RDpairs\n-matePairs <file1_1>\
    \ <file1_2> <file2_1> <file_2_2> ...\nReverse-Direct paired reads files. Several\n\
    pairs of files can be specified.\n-p\n-prefix <name>          Prefix for the output\
    \ files. Default is \"out\".\n-M\n-minOverlap <int>       Minimum size of the\
    \ overlaps to compute.\nDefault is half of the reads length.\n-t\n-truncate <int>\
    \         Truncate the 3' end of the reads TO the specified\nlength"
  type: long
  inputBinding:
    prefix: -nThreads
- id: in_edenafile_fileovl_edena
  doc: "-edenaFile <file.ovl>   Edena overlap (.ovl) file. Required.\n-p\n-prefix\
    \ <name>          Prefix for the output files.\n-m\n-overlapCutoff <int>    Only\
    \ consider overlaps >= than the specified size.\nThe optimal setting of this parameter\
    \ depends on the\ncoverage that was achieved by the sequencing run.\nYou should\
    \ therefore try different values in order\nto get the optimal one.\n-c\n-minContigSize\
    \ <int>    Minimum size of the contigs to output.\nDefault is 1.5*readLength.\n\
    -cc\n-contextualCleaning\n<yes/no>   Contextual cleaning of spurious edges.\n\
    -minCoverage <int>      Minimum required coverage for the contigs. This\nvalue\
    \ is automatically determined if not specified.\n-sph\n-shortPeHorizon <int> \
    \  Maximum search distance for short >< paired-end\nsampling. Default: 1000\n\
    -lph\n-longPeHorizon <int>    Maximum search distance for long <> paired-end\n\
    sampling. Default: 15000\n-peHorizon <int>        obsolete: Maximum search distance\
    \ for both short\nand long paired-end reads sampling.\n-trimRed <yes/no>     \
    \  By default, possible redundant sequences, caused by\nunresolved repeats, are\
    \ trimmed from contigs ends.\nSetting this flag to 'no' allows keeping such\n\
    redundancies up to the length of the largest insert\nsize (maxJump). !! setting\
    \ this setting to 'no'\nproduces an artificially increased assembly size !!\n\
    -maxRed <int>           Max ending redundancy length. Default: 0 (equivalent\n\
    to '-trimRed yes'. Overrides -trimRed.\n-d\n-deadEnds <int>         Maximum length\
    \ for dead-end paths removal.\nDefault value is set to 2*readLength-1.\n-discardNonUsable\n\
    <yes/no>   Reads that are involved in orphan nodes smaller than\n1.5*readLength\
    \ are considered as \"non-usable\".\nThis filter discards such nodes. Default:\
    \ enabled\n-trim <int>             Coverage cutoff for contigs ends:\nContig ends\
    \ ending in a gap may contain errors due\nto low coverage. This option trim a\
    \ few bases from\nthese ends until a minimum coverage is reached.\nDefault is\
    \ 4. Ends are not trimmed if set to 1.\n-shell                  Interactive shell.\
    \ Allows querying the assembly\ngraph."
  type: boolean
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- edena
