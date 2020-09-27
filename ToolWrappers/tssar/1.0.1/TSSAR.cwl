class: CommandLineTool
id: TSSAR.cwl
inputs:
- id: in_libp
  doc: "*libraryP.sam* AND --libM *libraryM.sam*\nInput library (P .. Plus; M .. Minus)\
    \ in SAM format. The plus\nlibrary is the one with enriched TSS (for dRNA-seq\
    \ this means that\nthe plus library is the treated library, while the minus library\
    \ is\nthe untreated library)"
  type: boolean
  inputBinding:
    prefix: --libP
- id: in_fast_a
  doc: "*genome.fa* OR --g_size *INT*\nEither the location of reference genome sequence\
    \ in fasta file\nformat OR the genome size in *INT*. The fasta file is only used\
    \ to\nparse the genome size so just one of the two must be specified."
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_min_peak
  doc: "*INT*\nMinimal Peak size in *INT*. Only positions where read start count in\n\
    the (+)library is greater or equal then *INT* are evaluated to be a\nTSS. Positions\
    \ with less reads are seen as backgroound noise and not\nconsidered. Default is\
    \ *3*."
  type: boolean
  inputBinding:
    prefix: --minPeak
- id: in_pval
  doc: "*FLOAT*\nMaximal P-value for each position to be annotated as a TSS. Default\n\
    is *1e-04*."
  type: boolean
  inputBinding:
    prefix: --pval
- id: in_winsize
  doc: "*INT*\nSize of the window which slides over the genome and defines the\nstatistical\
    \ properties of the local model. Default is *1,000*."
  type: boolean
  inputBinding:
    prefix: --winSize
- id: in_verbose
  doc: "If set, some progress reports are printed to STDERR during\ncomputation."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_pro_rata
  doc: "If set, the information from the SAM file how many times a read was\nmapped\
    \ to the genome is used, if present. If the read maps *n* times\nto the genome,\
    \ each position is counted only *1/n* times. Usefull in\ncombination with e.g.\
    \ segemehl mapper, which can report suboptimal\nmapping positions and/or reports\
    \ all location where a read maps\noptimally. Default is off."
  type: boolean
  inputBinding:
    prefix: --prorata
- id: in_score
  doc: "*p|d*\nIf score mode is *p* the p-value is used as score in the TSS BED\n\
    file. If score mode is *d* the peak difference is used as score in\nthe TSS BED\
    \ file. Default is *d*. Also used for clustering, which\nadvices to use 'd', since\
    \ the p-value often becomes zero for\nconsecutive positions, thus disabling a\
    \ proper merging of\nconsecutive positions to the best one."
  type: boolean
  inputBinding:
    prefix: --score
- id: in_no_cluster
  doc: "| --cluster\nIf --nocluster is set all positions annotated as TSS are reported.\n\
    If --cluster is set consecutive TSS positions are clustered and only\nthe 'best'\
    \ position is reported. 'Best' position depends on the\nsetting of --score (see\
    \ above). Either the position with the lowest\np-Value or the position with the\
    \ highest peak difference between\nplus and minus library is reported. Default\
    \ is --cluster. The option\n--range defines the maximal distance for two significant\
    \ positions\nto be called 'consecutive'."
  type: boolean
  inputBinding:
    prefix: --nocluster
- id: in_range
  doc: "*INT*\nThe maximal distance for two significant positions to be be\nclustered\
    \ together if option --cluster is set. Default is *3* nt. If\n--cluster is set\
    \ to --nocluster, --range is ignored."
  type: boolean
  inputBinding:
    prefix: --range
- id: in_clean
  doc: "| --noclean\nIf --clean is set, all temporary files which are created during\
    \ the\ncomputation are deleted afterwards. With --noclean they are stored.\nMainly\
    \ for debugging purpose. Default setting is --clean."
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_tmpdir
  doc: "*DIR*\nSpecifies where the temporary files should be stored. Default is\n\
    */tmp*."
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: in_man
  doc: Print a long version of the man-page.
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TSSAR
