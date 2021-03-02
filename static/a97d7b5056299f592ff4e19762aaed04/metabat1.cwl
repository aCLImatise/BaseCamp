class: CommandLineTool
id: metabat1.cwl
inputs:
- id: in_i
  doc: '[ --inFile ] arg               Contigs in (gzipped) fasta file format [Mandatory]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_base_file
  doc: "[ --outFile ] arg              Base file name for each bin. The default output\
    \ is fasta format. Use -l\noption to output only contig names [Mandatory]"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_file_having
  doc: "[ --abdFile ] arg              A file having mean and variance of base coverage\
    \ depth (tab delimited;\nthe first column should be contig names, and the first\
    \ row will be\nconsidered as the header and be skipped) [Optional]"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_cv_ext
  doc: "When a coverage file without variance (from third party tools) is used\ninstead\
    \ of abdFile from jgi_summarize_bam_contig_depths"
  type: boolean?
  inputBinding:
    prefix: --cvExt
- id: in_arg_file_paired
  doc: "[ --pairFile ] arg             A file having paired reads mapping information.\
    \ Use it to increase\nsensitivity. (tab delimited; should have 3 columns of contig\
    \ index\n(ordered by), its mate contig index, and supporting mean read coverage.\n\
    The first row will be considered as the header and be skipped) [Optional]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_p_one
  doc: "(=0)                     Probability cutoff for bin seeding. It mainly controls\
    \ the number of\npotential bins and their specificity. The higher, the more (specific)\n\
    bins would be. (Percentage; Should be between 0 and 100)"
  type: long?
  inputBinding:
    prefix: --p1
- id: in_p_two
  doc: "(=0)                     Probability cutoff for secondary neighbors. It supports\
    \ p1 and better be\nclose to p1. (Percentage; Should be between 0 and 100)"
  type: long?
  inputBinding:
    prefix: --p2
- id: in_min_prob
  doc: "(=0)                Minimum probability for binning consideration. It controls\
    \ sensitivity.\nUsually it should be >= 75. (Percentage; Should be between 0 and\
    \ 100)"
  type: long?
  inputBinding:
    prefix: --minProb
- id: in_min_binned
  doc: For better specificity. Different from --sensitive when using correlation
  type: long?
  inputBinding:
    prefix: --minBinned
- id: in_very_sensitive
  doc: "For greater sensitivity, especially in a simple community. It is the\nshortcut\
    \ for --p1 90 --p2 85 --pB 20 --minProb 75 --minBinned 20\n--minCorr 90"
  type: boolean?
  inputBinding:
    prefix: --verysensitive
- id: in_sensitive
  doc: For better sensitivity [default]. It is the shortcut for --p1 90 --p2 90
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_very_specific
  doc: "For greater specificity. No correlation binning for short contig\nrecruiting.\
    \ It is the shortcut for --p1 90 --p2 90 --pB 40 --minProb 80\n--minBinned 40"
  type: boolean?
  inputBinding:
    prefix: --veryspecific
- id: in_super_specific
  doc: For the best specificity. It is the shortcut for --p1 95 --p2 90 --pB 50
  type: boolean?
  inputBinding:
    prefix: --superspecific
- id: in_min_samples
  doc: (=10)            Minimum number of sample sizes for considering correlation
    based
  type: long?
  inputBinding:
    prefix: --minSamples
- id: in_min_cvs_um
  doc: "(=2)               Minimum total mean coverage of a contig (sum of all libraries)\
    \ to\nconsider for abundance distance calculation"
  type: long?
  inputBinding:
    prefix: --minCVSum
- id: in_arg_minimum_size_bin
  doc: '[ --minClsSize ] arg (=200000) Minimum size of a bin to be considered as the
    output'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_minimum_size_considered
  doc: "[ --minContig ] arg (=2500)    Minimum size of a contig to be considered for\
    \ binning (should be >=1500;\nideally >=2500). If # of samples >= minSamples,\
    \ small contigs (>=1000)\nwill be given a chance to be recruited to existing bins\
    \ by default."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_min_contig_by_corr
  doc: "(=1000)     Minimum size of a contig to be considered for recruiting by pearson\n\
    correlation coefficients (activated only if # of samples >= minSamples;\ndisabled\
    \ when minContigByCorr > minContig)"
  type: long?
  inputBinding:
    prefix: --minContigByCorr
- id: in_arg_number_use
  doc: '[ --numThreads ] arg (=0)      Number of threads to use (0: use all cores)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_min_shared
  doc: (=50)             Percentage cutoff for merging fuzzy contigs
  type: long?
  inputBinding:
    prefix: --minShared
- id: in_fuzzy
  doc: "Binning with fuzziness which assigns multiple memberships of a contig to\n\
    bins (activated only with --pairFile at the moment)"
  type: boolean?
  inputBinding:
    prefix: --fuzzy
- id: in_output_only_sequence
  doc: '[ --onlyLabel ]                Output only sequence labels as a list in a
    column without sequences'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_then_sample
  doc: "[ --sumLowCV ]                 If set, then every sample that falls below\
    \ the minCV will be used in an\naggregate sample"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_arg_ignore_contigs
  doc: '[ --maxVarRatio ] arg (=0)     Ignore any contigs where variance / mean exceeds
    this ratio (0 disables)'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_save_tnf
  doc: File to save (or load if exists) TNF matrix for each contig in input
  type: File?
  inputBinding:
    prefix: --saveTNF
- id: in_save_distance
  doc: File to save (or load if exists) distance graph at lowest probability
  type: File?
  inputBinding:
    prefix: --saveDistance
- id: in_unbinned
  doc: Generate [outFile].unbinned.fa file for unbinned contigs
  type: boolean?
  inputBinding:
    prefix: --unbinned
- id: in_no_bin_out
  doc: No bin output. Usually combined with --saveCls to check only contig
  type: boolean?
  inputBinding:
    prefix: --noBinOut
- id: in_seed
  doc: "(=0)                   For reproducibility in ensemble binning, though it\
    \ might produce slightly\ndifferent results. (0: use random seed)"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_keep
  doc: Keep the intermediate files for later usage
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in__debug_output
  doc: '[ --debug ]                    Debug output'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__verbose_output
  doc: '[ --verbose ]                  Verbose output'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_recruiting
  doc: '-x [ --minCV ] arg (=1)           Minimum mean coverage of a contig to consider
    for abundance distance '
  type: string
  inputBinding:
    position: 0
- id: in_cut_off
  doc: --saveCls                         Save cluster memberships as a matrix format
  type: string
  inputBinding:
    position: 0
- id: in_memberships
  doc: -B [ --B ] arg (=20)              Number of bootstrapping for ensemble binning
    (Recommended to be >=20)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_base_file
  doc: "[ --outFile ] arg              Base file name for each bin. The default output\
    \ is fasta format. Use -l\noption to output only contig names [Mandatory]"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_base_file)
hints: []
cwlVersion: v1.1
baseCommand:
- metabat1
