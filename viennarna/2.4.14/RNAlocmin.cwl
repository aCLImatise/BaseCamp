class: CommandLineTool
id: RNAlocmin.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: seq
  doc: Sequence file in FASTA format. If the sequence is the first line of the input
    file, this is not needed  (default=`seq.txt')
  type: string
  inputBinding:
    prefix: --seq
- id: previous
  doc: Previously found LM (output from RNAlocmin or barriers), if specified does
    not need --seq option
  type: string
  inputBinding:
    prefix: --previous
- id: move
  doc: "Move set: I ==> insertion & deletion of base pairs S ==> I&D& switch of base\
    \ pairs  (possible values=\"I\", \"S\" default=`I')"
  type: string
  inputBinding:
    prefix: --move
- id: min_num
  doc: Maximal number of local minima returned (0 == unlimited)  (default=`100000')
  type: long
  inputBinding:
    prefix: --min-num
- id: find_num
  doc: Maximal number of local minima found (default = unlimited - crawl through whole
    input file)
  type: long
  inputBinding:
    prefix: --find-num
- id: verbose_lvl
  doc: "Level of verbosity (0 = nothing, 4 = full) WARNING: higher verbose levels\
    \ increase the computation time  (default=`0')"
  type: long
  inputBinding:
    prefix: --verbose-lvl
- id: depth
  doc: Depth of findpath search (higher value increases running time linearly)  (default=`10')
  type: long
  inputBinding:
    prefix: --depth
- id: minh
  doc: Print only minima with energy barrier greater than this  (default=`0.0')
  type: string
  inputBinding:
    prefix: --minh
- id: walk
  doc: Walking method used D ==> gradient descent F ==> use first found lower energy
    structure R ==> use random lower energy structure (does not work with --noLP and
    -m S options) (possible values="D", "F", "R" default=`D')
  type: string
  inputBinding:
    prefix: --walk
- id: no_lp
  doc: Work only with canonical RNA structures (w/o isolated base pairs, cannot be
    combined with ranodm walk (-w R option) and shift move set (-m S))  (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set
  type: string
  inputBinding:
    prefix: --paramFile
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: pseudo_knots
  doc: Allow for pseudoknots according to "gfold" model - H, K, L, and M types (genus
    one) of pseudoknots are allowed (increases computation time greatly), cannot be
    combined with shift move set (-m S)  (default=off)
  type: boolean
  inputBinding:
    prefix: --pseudoknots
- id: just_read
  doc: Do not expect input from stdin, just do postprocessing.  (default=off)
  type: boolean
  inputBinding:
    prefix: --just-read
- id: neighborhood
  doc: Use the Neighborhood routines to perform gradient descend. Cannot be combined
    with shift move set (-m S) and pseudoknots (-k). Test option. (default=off)
  type: boolean
  inputBinding:
    prefix: --neighborhood
- id: degeneracy_off
  doc: Do not deal with degeneracy, select the lexicographically first from the same
    energy neighbors.  (default=off)
  type: boolean
  inputBinding:
    prefix: --degeneracy-off
- id: just_output
  doc: Do not store the minima and optimize, just compute directly minima and output
    them. Output file can contain duplicates.  (default=off)
  type: boolean
  inputBinding:
    prefix: --just-output
- id: bar_tree
  doc: Generate an approximate barrier tree. (default=off)
  type: boolean
  inputBinding:
    prefix: --bartree
- id: barr_name
  doc: Name of barrier tree output file, switches on -b flag.  (default=`treeRNAloc.ps')
  type: string
  inputBinding:
    prefix: --barr-name
- id: barrier_file
  doc: File for saddle heights between LM (simulates the output format of barriers
    program)
  type: string
  inputBinding:
    prefix: --barrier-file
- id: rates
  doc: Create rates for treekin  (default=off)
  type: boolean
  inputBinding:
    prefix: --rates
- id: rates_file
  doc: File where to write rates, switches on -r flag (default=`rates.out')
  type: string
  inputBinding:
    prefix: --rates-file
- id: temp
  doc: Temperature in Celsius (only for rates) (default=`37.0')
  type: string
  inputBinding:
    prefix: --temp
- id: flood_portion
  doc: Fraction of minima to flood (floods first minima with low number of inwalking
    sample structures) (0.0 -> no flood; 1.0 -> try to flood all) Usable only with
    -r or -b options. (default=`0.95')
  type: string
  inputBinding:
    prefix: --floodPortion
- id: flood_max
  doc: Flood cap - how many structures to flood in one basin  (default=`1000')
  type: long
  inputBinding:
    prefix: --floodMax
- id: e_range
  doc: Report only LM, which energy is in range <MFE (or lowest found LM), MFE+eRange>
    in kcal/mol.
  type: double
  inputBinding:
    prefix: --eRange
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAlocmin
