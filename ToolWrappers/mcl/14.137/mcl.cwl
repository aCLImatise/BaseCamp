class: CommandLineTool
id: mcl.cwl
inputs:
- id: in_write_output_file
  doc: '!  write output to file <fname>'
  type: File
  inputBinding:
    prefix: -o
- id: in_help
  doc: i  output description of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_i_show_default
  doc: i  show some of the default settings
  type: boolean
  inputBinding:
    prefix: -z
- id: in_jury_charter
  doc: i  show the meaning of the jury pruning synopsis
  type: boolean
  inputBinding:
    prefix: --jury-charter
- id: in_how_much_ram
  doc: i  show estimated RAM usage for graphs with <int> nodes
  type: long
  inputBinding:
    prefix: -how-much-ram
- id: in_show_schemes
  doc: i  show the preset -scheme options
  type: boolean
  inputBinding:
    prefix: --show-schemes
- id: in_overlap
  doc: what to do with overlap (default cut)
  type: string
  inputBinding:
    prefix: -overlap
- id: in_force_connected
  doc: analyze clustering, make sure it induces cocos
  type: string
  inputBinding:
    prefix: -force-connected
- id: in_check_connected
  doc: analyze clustering, see whether it induces cocos
  type: string
  inputBinding:
    prefix: -check-connected
- id: in_write_limit
  doc: output the limit matrix
  type: boolean
  inputBinding:
    prefix: --write-limit
- id: in_show_log
  doc: send log to stdout
  type: string
  inputBinding:
    prefix: -show-log
- id: in_discard_loops
  doc: remove loops in input graphs if any
  type: string
  inputBinding:
    prefix: -discard-loops
- id: in_sum_loops
  doc: set loop weight to sum of node arc weights
  type: boolean
  inputBinding:
    prefix: --sum-loops
- id: in_increase_loopweights_numfold
  doc: increase loop-weights <num>-fold
  type: long
  inputBinding:
    prefix: -c
- id: in_quiet_level_logging
  doc: quiet level of logging
  type: string
  inputBinding:
    prefix: -q
- id: in_analyze
  doc: append performance/characteristics measures
  type: string
  inputBinding:
    prefix: -analyze
- id: in_sort
  doc: order clustering by one of lex|size|revsize|none
  type: long
  inputBinding:
    prefix: -sort
- id: in_digits
  doc: precision in interchange (intermediate matrices) output
  type: long
  inputBinding:
    prefix: -digits
- id: in_write_binary
  doc: write binary output
  type: boolean
  inputBinding:
    prefix: --write-binary
- id: in_abc
  doc: expect abc-format (label input), write label output
  type: boolean
  inputBinding:
    prefix: --abc
- id: in_s_if
  doc: expect sif-format (label input), write label output
  type: boolean
  inputBinding:
    prefix: --sif
- id: in_etc
  doc: expect etc-format (label input), write label output
  type: boolean
  inputBinding:
    prefix: --etc
- id: in_expect_values
  doc: accept extended SIF or ETC format (label:weight fields)
  type: boolean
  inputBinding:
    prefix: --expect-values
- id: in_use_tab
  doc: expect native network format, write label output using dictionary
  type: string
  inputBinding:
    prefix: -use-tab
- id: in_abc_tf
  doc: transform label values
  type: string
  inputBinding:
    prefix: -abc-tf
- id: in_abc_neg_log
  doc: log-transform label value, negate sign
  type: boolean
  inputBinding:
    prefix: --abc-neg-log
- id: in_abc_neg_log_one_zero
  doc: log10-transform label value, negate sign
  type: boolean
  inputBinding:
    prefix: --abc-neg-log10
- id: in_write_graph
  doc: write input matrix to file
  type: File
  inputBinding:
    prefix: -write-graph
- id: in_write_graph_x
  doc: write transformed matrix to file
  type: File
  inputBinding:
    prefix: -write-graphx
- id: in_write_expanded
  doc: file name to write expanded graph to
  type: File
  inputBinding:
    prefix: -write-expanded
- id: in_an_not
  doc: string describing the experiment
  type: string
  inputBinding:
    prefix: -annot
- id: in_aa
  doc: append <suffix> to mcl-created output file name
  type: File
  inputBinding:
    prefix: -aa
- id: in_o_dir
  doc: '!  use this directory for output'
  type: Directory
  inputBinding:
    prefix: -odir
- id: in_az
  doc: i  show output file name mcl would construct
  type: File
  inputBinding:
    prefix: -az
- id: in_a_x
  doc: i  show the suffix mcl constructs from parameters
  type: boolean
  inputBinding:
    prefix: -ax
- id: in_ap
  doc: prepend <prefix> to mcl-created output file name
  type: File
  inputBinding:
    prefix: -ap
- id: in_use_automatic_naming
  doc: use automatic naming and use input directory for output
  type: boolean
  inputBinding:
    prefix: --d
- id: in_tf
  doc: transform matrix values
  type: string
  inputBinding:
    prefix: -tf
- id: in_icl
  doc: subcluster this clustering
  type: string
  inputBinding:
    prefix: -icl
- id: in_pi
  doc: preprocess by applying inflation with parameter <num>
  type: long
  inputBinding:
    prefix: -pi
- id: in_ph
  doc: as -pi, applied before shadowing
  type: long
  inputBinding:
    prefix: -ph
- id: in_if
  doc: assume expanded input, inflate with parameter <num>
  type: long
  inputBinding:
    prefix: -if
- id: in_main_inflation_value
  doc: '!  main inflation value (default 2.0)'
  type: long
  inputBinding:
    prefix: -I
- id: in_scheme
  doc: '!  use a preset resource scheme (cf --show-schemes)'
  type: long
  inputBinding:
    prefix: -scheme
- id: in_resource
  doc: '!  allow <int> neighbours throughout computation'
  type: long
  inputBinding:
    prefix: -resource
- id: in_sparse
  doc: estimated sparse matrix-vector overhead per summand (default 10)
  type: long
  inputBinding:
    prefix: -sparse
- id: in_te
  doc: '!  expansion thread number, use with multiple CPUs'
  type: long
  inputBinding:
    prefix: -te
- id: in_show
  doc: (small graphs only [#<20]) dump iterands to *screen*
  type: boolean
  inputBinding:
    prefix: --show
- id: in__mode_verbose
  doc: '{pruning|explain|clusters|all}    mode verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in__mode_silent
  doc: '{pruning|explain|clusters|all}    mode silent'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_rigid_pruning_threshold
  doc: the rigid pruning threshold
  type: long
  inputBinding:
    prefix: -p
- id: in_inverted_rigid_cf
  doc: (inverted) rigid pruning threshold (cf -z)
  type: long
  inputBinding:
    prefix: -P
- id: in_recover_maximally_needed
  doc: recover to maximally <int> entries if needed
  type: long
  inputBinding:
    prefix: -R
- id: in_select_int_needed
  doc: select down to <int> entries if needed
  type: long
  inputBinding:
    prefix: -S
- id: in_pct
  doc: try recovery if mass is less than <pct>
  type: string
  inputBinding:
    prefix: -pct
- id: in_warn_factor
  doc: warn if pruning reduces entry count by <int>
  type: long
  inputBinding:
    prefix: -warn-factor
- id: in_warn_pct
  doc: warn if pruning reduces mass to <pct> weight
  type: string
  inputBinding:
    prefix: -warn-pct
- id: in_dump_stem
  doc: use <str> to construct dump (file) names
  type: File
  inputBinding:
    prefix: -dump-stem
- id: in_dump
  doc: <mode> in chr|ite|cls|dag (cf manual page)
  type: string
  inputBinding:
    prefix: -dump
- id: in_dump_interval
  doc: :<int>    only dump for iterand indices in this interval
  type: long
  inputBinding:
    prefix: -dump-interval
- id: in_dump_modulo
  doc: only dump if the iterand index modulo <int> vanishes
  type: long
  inputBinding:
    prefix: -dump-modulo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: '!  write output to file <fname>'
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_file)
- id: out_aa
  doc: append <suffix> to mcl-created output file name
  type: File
  outputBinding:
    glob: $(inputs.in_aa)
- id: out_o_dir
  doc: '!  use this directory for output'
  type: Directory
  outputBinding:
    glob: $(inputs.in_o_dir)
- id: out_az
  doc: i  show output file name mcl would construct
  type: File
  outputBinding:
    glob: $(inputs.in_az)
- id: out_ap
  doc: prepend <prefix> to mcl-created output file name
  type: File
  outputBinding:
    glob: $(inputs.in_ap)
cwlVersion: v1.1
baseCommand:
- mcl
