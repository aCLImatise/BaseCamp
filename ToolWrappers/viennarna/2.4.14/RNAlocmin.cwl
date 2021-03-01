class: CommandLineTool
id: RNAlocmin.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_seq
  doc: "Sequence file in FASTA format. If the sequence is\nthe first line of the input\
    \ file, this is not\nneeded  (default=`seq.txt')"
  type: File?
  inputBinding:
    prefix: --seq
- id: in_previous
  doc: "Previously found LM (output from RNAlocmin or\nbarriers), if specified does\
    \ not need --seq\noption"
  type: string?
  inputBinding:
    prefix: --previous
- id: in_move
  doc: "Move set:\nI ==> insertion & deletion of base pairs\nS ==> I&D& switch of\
    \ base pairs  (possible\nvalues=\"I\", \"S\" default=`I')"
  type: string?
  inputBinding:
    prefix: --move
- id: in_min_num
  doc: "Maximal number of local minima returned\n(0 == unlimited)  (default=`100000')"
  type: long?
  inputBinding:
    prefix: --min-num
- id: in_find_num
  doc: "Maximal number of local minima found\n(default = unlimited - crawl through\
    \ whole input\nfile)"
  type: long?
  inputBinding:
    prefix: --find-num
- id: in_verbose_lvl
  doc: "Level of verbosity (0 = nothing, 4 = full)\nWARNING: higher verbose levels\
    \ increase the\ncomputation time  (default=`0')"
  type: long?
  inputBinding:
    prefix: --verbose-lvl
- id: in_depth
  doc: "Depth of findpath search (higher value increases\nrunning time linearly) \
    \ (default=`10')"
  type: long?
  inputBinding:
    prefix: --depth
- id: in_minh
  doc: Print only minima with energy barrier greater than
  type: string?
  inputBinding:
    prefix: --minh
- id: in_walk
  doc: "Walking method used\nD ==> gradient descent\nF ==> use first found lower energy\
    \ structure\nR ==> use random lower energy structure (does\nnot work with --noLP\
    \ and -m S options)\n(possible values=\"D\", \"F\", \"R\"\ndefault=`D')"
  type: string?
  inputBinding:
    prefix: --walk
- id: in_no_lp
  doc: "Work only with canonical RNA structures (w/o\nisolated base pairs, cannot\
    \ be combined with\nranodm walk (-w R option) and shift move set (-m\nS))  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set"
  type: string?
  inputBinding:
    prefix: --paramFile
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and multi-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_pseudo_knots
  doc: "Allow for pseudoknots according to \"gfold\" model\n- H, K, L, and M types\
    \ (genus one) of\npseudoknots are allowed (increases computation\ntime greatly),\
    \ cannot be combined with shift\nmove set (-m S)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --pseudoknots
- id: in_just_read
  doc: Do not expect input from stdin, just do
  type: boolean?
  inputBinding:
    prefix: --just-read
- id: in_neighborhood
  doc: "Use the Neighborhood routines to perform gradient\ndescend. Cannot be combined\
    \ with shift move set\n(-m S) and pseudoknots (-k). Test option.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --neighborhood
- id: in_degeneracy_off
  doc: "Do not deal with degeneracy, select the\nlexicographically first from the\
    \ same energy\nneighbors.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --degeneracy-off
- id: in_just_output
  doc: "Do not store the minima and optimize, just compute\ndirectly minima and output\
    \ them. Output file can\ncontain duplicates.  (default=off)"
  type: File?
  inputBinding:
    prefix: --just-output
- id: in_bar_tree
  doc: "Generate an approximate barrier tree.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --bartree
- id: in_barr_name
  doc: Name of barrier tree output file, switches on -b
  type: File?
  inputBinding:
    prefix: --barr-name
- id: in_barrier_file
  doc: "File for saddle heights between LM (simulates the\noutput format of barriers\
    \ program)"
  type: File?
  inputBinding:
    prefix: --barrier-file
- id: in_rates
  doc: Create rates for treekin  (default=off)
  type: boolean?
  inputBinding:
    prefix: --rates
- id: in_rates_file
  doc: "File where to write rates, switches on -r flag\n(default=`rates.out')"
  type: File?
  inputBinding:
    prefix: --rates-file
- id: in_temp
  doc: "Temperature in Celsius (only for rates)\n(default=`37.0')"
  type: double?
  inputBinding:
    prefix: --temp
- id: in_flood_portion
  doc: "Fraction of minima to flood (floods first minima\nwith low number of inwalking\
    \ sample structures)\n(0.0 -> no flood; 1.0 -> try to flood all)\nUsable only\
    \ with -r or -b options.\n(default=`0.95')"
  type: long?
  inputBinding:
    prefix: --floodPortion
- id: in_flood_max
  doc: Flood cap - how many structures to flood in one
  type: long?
  inputBinding:
    prefix: --floodMax
- id: in_e_range
  doc: "Report only LM, which energy is in range <MFE (or\nlowest found LM), MFE+eRange>\
    \ in kcal/mol.\n"
  type: double?
  inputBinding:
    prefix: --eRange
- id: in_this
  doc: (default=`0.0')
  type: string
  inputBinding:
    position: 0
- id: in_postprocessing_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
- id: in_flag_dot
  doc: (default=`treeRNAloc.ps')
  type: string
  inputBinding:
    position: 0
- id: in_basin
  doc: (default=`1000')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_just_output
  doc: "Do not store the minima and optimize, just compute\ndirectly minima and output\
    \ them. Output file can\ncontain duplicates.  (default=off)"
  type: File?
  outputBinding:
    glob: $(inputs.in_just_output)
- id: out_barr_name
  doc: Name of barrier tree output file, switches on -b
  type: File?
  outputBinding:
    glob: $(inputs.in_barr_name)
- id: out_barrier_file
  doc: "File for saddle heights between LM (simulates the\noutput format of barriers\
    \ program)"
  type: File?
  outputBinding:
    glob: $(inputs.in_barrier_file)
- id: out_rates_file
  doc: "File where to write rates, switches on -r flag\n(default=`rates.out')"
  type: File?
  outputBinding:
    glob: $(inputs.in_rates_file)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAlocmin
