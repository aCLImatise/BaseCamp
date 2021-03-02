class: CommandLineTool
id: pairDiscordants.py.cwl
inputs:
- id: in_file
  doc: "A tab delimited BED file, or standard input (-i\nstdin)."
  type: File?
  inputBinding:
    prefix: --file
- id: in_num_mappings
  doc: "The number of mapping combinations that are reported.\nDefault = 1000."
  type: long?
  inputBinding:
    prefix: --numMappings
- id: in_order
  doc: "The order to choose mappings when there are more than\nspecified in -n. Supports\
    \ size between read1-read2\nmappings (-o size) or genome order (-o genome) sorted\n\
    in default fashion (chr10 before chr2). In either case\nmapping combinations with\
    \ less edit distance have\npriority. Default = size."
  type: long?
  inputBinding:
    prefix: --order
- id: in_dist
  doc: "The genomic distance above which a readpair mapping is\nconsidered 'distant'.\
    \ This is used in determining the\norder that mappings are reported when using\
    \ the 'size'\noption in -o. Default = 1000000"
  type: long?
  inputBinding:
    prefix: --dist
- id: in_min_span
  doc: "The minimum genomic distance that a readpair must span\nin order to be reported,\
    \ not counting the read lengths\n(i.e., inner span, not fragment size). Default\
    \ = 100."
  type: long?
  inputBinding:
    prefix: --minSpan
- id: in_min_conc_range
  doc: "minimum size to judge a readpair as 'concordant' with\nrespect to the reference\
    \ genome. Assumes fragment\nlibraries not matepair libraries (+/- orientation\
    \ is\nconcordant). Default = 0."
  type: long?
  inputBinding:
    prefix: --minConcRange
- id: in_max_conc_range
  doc: "Maximum size to judge a read as 'concordant. Default =\n600."
  type: long?
  inputBinding:
    prefix: --maxConcRange
- id: in_mode
  doc: "Report all mapping types (-m detail), just discordants\n(-m discordant), or\
    \ directly to Hydra input format (-m\nhydra) without additional columns. In detail\
    \ mode only\none mapping is returned for concordant reads or those\nthat fail\
    \ the minSpan (-s1) threshold. These are\ntagged in an additional column as 'concordant'\
    \ or\n'badSpan'. Default = 'hydra'."
  type: long?
  inputBinding:
    prefix: --mode
- id: in_anchor_thresh
  doc: "The number of mapping combinations allowed for\nreadpairs with a single uniquely-mapped\
    \ read;\nreadpairs with more than this number of mappings on\nthe non-unique end\
    \ will not be reported (except in\ndetail mode with NA's in all fields except\
    \ the read\nID); Default = 1000."
  type: long?
  inputBinding:
    prefix: --anchorThresh
- id: in_multi_thresh
  doc: "The number of mapping combiantions allowed for\nreadpairs without a single\
    \ uniquely-mapped read;\nreadpair mappings with more than this number of\nmappings\
    \ will not be reported (except in detail mode\nwith NA's in all fields except\
    \ the read ID); Default =\n100."
  type: long?
  inputBinding:
    prefix: --multiThresh
- id: in_edit_slop
  doc: "The combined edit distance allowed, relative to best\nmapping for each pair;\
    \ Default = 0."
  type: long?
  inputBinding:
    prefix: --editSlop
- id: in_orphans
  doc: "Whether or not to report \"orphaned\" pairs; Default =\nfalse.\n"
  type: boolean?
  inputBinding:
    prefix: --orphans
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- pairDiscordants.py
