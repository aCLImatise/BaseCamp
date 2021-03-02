class: CommandLineTool
id: spamo.cwl
inputs:
- id: in_create_directory_write
  doc: "create the directory and write output files in it;\nnot compatible with -oc"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_oc
  doc: "create the directory but if it already exists allow\noverwriting the contents;\
    \ default: spamo_out"
  type: Directory?
  inputBinding:
    prefix: -oc
- id: in_min_score
  doc: "the minimum score (bits) to accept as a motif match;\ndefault: 7\nNote: if\
    \ <valu> is in the range [-1, 0), then the\nminimum score is set to: -<valu>*pwm_maximum_score"
  type: long?
  inputBinding:
    prefix: -minscore
- id: in_margin
  doc: "edge margin excluded for primary motif matches and\nthe maximum distance from\
    \ the primary motif to the\nsecondary motif; default: 150"
  type: long?
  inputBinding:
    prefix: -margin
- id: in_bin
  doc: 'size of bins used for output; default: 1'
  type: long?
  inputBinding:
    prefix: -bin
- id: in_range
  doc: "the range from the primary to include in significance\ntests; default: 150"
  type: long?
  inputBinding:
    prefix: -range
- id: in_use_best_sec
  doc: "use only the best match of the secondary motif;\ndefault: count all secondary\
    \ matches above the\nscore match threshold in the margins around the\nprimary\
    \ motif match"
  type: boolean?
  inputBinding:
    prefix: -usebestsec
- id: in_shared
  doc: "fraction of shared trimmed sequence content that\nis required to exclude the\
    \ sequence as redundant;\nset <fract> to 0 to skip sequence redundancy check;\n\
    default: 0.5"
  type: double?
  inputBinding:
    prefix: -shared
- id: in_odds
  doc: "odds ratio used for speedup of the redundant\nsequence check; low values may\
    \ cause some\nredundant sequences to be missed; set <odds>\nto 0 to do full-length\
    \ check;\ndefault: 20"
  type: long?
  inputBinding:
    prefix: -odds
- id: in_cut_off
  doc: "cutoff for spacings to be considered significant;\ndefault: 0.05"
  type: double?
  inputBinding:
    prefix: -cutoff
- id: in_evalue
  doc: "minimum E-value for printing secondary motifs;\ndefault: 10"
  type: long?
  inputBinding:
    prefix: -evalue
- id: in_overlap
  doc: "number of bases that the most significant spacing\nmust overlap before further\
    \ redundancy testing is\ndone; default: 2"
  type: long?
  inputBinding:
    prefix: -overlap
- id: in_joint
  doc: "fraction of sites making up the most significant\nspacing that must be in\
    \ both sets for the less\nsignificant motif to be considered redundant;\ndefault:\
    \ 0.5"
  type: double?
  inputBinding:
    prefix: -joint
- id: in_pseudo
  doc: "pseudocount added to loaded motifs;\ndefault: 0.1"
  type: double?
  inputBinding:
    prefix: -pseudo
- id: in_bg_file
  doc: "file containing background frequency information\nused to apply pseudocounts\
    \ to motifs and create the\nscoring matrices; default: calculate from sequences"
  type: File?
  inputBinding:
    prefix: -bgfile
- id: in_x_alph
  doc: "Convert the alphabet of the secondary motif databases\nto the alphabet of\
    \ the primary motif\nassuming the core symbols of the secondary motif\nalphabet\
    \ are a subset; default: reject differences"
  type: boolean?
  inputBinding:
    prefix: -xalph
- id: in_trim
  doc: "trim the edges of motifs based on the information\ncontent; positions on the\
    \ edges with information\ncontent less than bits will not be used in\nscanning\n\
    default: 0.25"
  type: double?
  inputBinding:
    prefix: -trim
- id: in_num_gen
  doc: "specify the random seed for initializing the pseudo-\nrandom number generator\
    \ used in breaking ties;\nthe seed is included in the output so experiments\n\
    can be repeated; special value 'time' seeds to the\nsystem clock; default: 1"
  type: long?
  inputBinding:
    prefix: -numgen
- id: in_primary
  doc: "name of motif to select as the primary motif;\noverrides -primaryi"
  type: string?
  inputBinding:
    prefix: -primary
- id: in_primary_i
  doc: "index of motif to select as the primary motif\ncounting from 1; default: 1"
  type: long?
  inputBinding:
    prefix: -primaryi
- id: in_keep_primary
  doc: "by default all occurrences of the primary other\nthan the chosen one are erased\
    \ to reduce the\nnumber of motifs whose apparent enrichment is due\nto multiple\
    \ occurrences of the primary motif. If\nthe same file is specified for the primary\
    \ and\nsecondary motifs, then this option will override\nerasing and primary-primary\
    \ spacings will be\nanalyzed."
  type: boolean?
  inputBinding:
    prefix: -keepprimary
- id: in_inc
  doc: "name pattern to select as secondary motif; may be\nrepeated; default: all\
    \ motifs are used"
  type: string?
  inputBinding:
    prefix: -inc
- id: in_exc
  doc: "name pattern to exclude as secondary motif; may be\nrepeated; default: all\
    \ motifs are used"
  type: string?
  inputBinding:
    prefix: -exc
- id: in_text
  doc: output text file only (no HTML or XML)
  type: File?
  inputBinding:
    prefix: -text
- id: in_eps
  doc: output histograms in eps format; usable with -png
  type: boolean?
  inputBinding:
    prefix: -eps
- id: in_png
  doc: output histograms in png format; usable with -eps
  type: boolean?
  inputBinding:
    prefix: -png
- id: in_dumps_eqs
  doc: "dump matching trimmed sequences to output files;\nmatches are initially in\
    \ sequence name order;\nsee documentation for column descriptions"
  type: boolean?
  inputBinding:
    prefix: -dumpseqs
- id: in_dump_sigs
  doc: "same as above except only secondary matches in\nin significant bins are dumped\n\
    matches are initially in sequence name order;\nsee documentation for column descriptions"
  type: boolean?
  inputBinding:
    prefix: -dumpsigs
- id: in_verbosity
  doc: "set the verbosity of the output: 1 (quiet) - 5 (dump);\ndefault: 2 (normal)"
  type: long?
  inputBinding:
    prefix: -verbosity
- id: in_version
  doc: print the version and exit
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_primary_motif
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_secondary_motifs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_create_directory_write
  doc: "create the directory and write output files in it;\nnot compatible with -oc"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_create_directory_write)
- id: out_text
  doc: output text file only (no HTML or XML)
  type: File?
  outputBinding:
    glob: $(inputs.in_text)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- spamo
