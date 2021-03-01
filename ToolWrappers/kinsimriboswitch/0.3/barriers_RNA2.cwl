class: CommandLineTool
id: barriers_RNA2.cwl
inputs:
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_quiet
  doc: be quiet, inhibit PS output  (default=off)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: print more information  (default=off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_graph
  doc: define graph type  (default=`RNA')
  type: string?
  inputBinding:
    prefix: --graph
- id: in_moves
  doc: "select move-set (if Graph allows several different\nones)"
  type: string?
  inputBinding:
    prefix: --moves
- id: in_b_size
  doc: print basin sizes  (default=off)
  type: boolean?
  inputBinding:
    prefix: --bsize
- id: in_s_size
  doc: print saddle component sizes  (default=off)
  type: boolean?
  inputBinding:
    prefix: --ssize
- id: in_max
  doc: "compute only the lowest <num> local minima\n(default=`100')"
  type: long?
  inputBinding:
    prefix: --max
- id: in_minh
  doc: "print only minima with barrier > dE\n(default=`0.000001')"
  type: double?
  inputBinding:
    prefix: --minh
- id: in_saddle
  doc: print saddle point structures  (default=off)
  type: boolean?
  inputBinding:
    prefix: --saddle
- id: in_rates
  doc: "compute rates between macro states (basins)\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --rates
- id: in_poset
  doc: "input is a poset from n objective functions\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --poset
- id: in_path
  doc: "=<l2>  backtrack path between lmins l2 and l1 (l1 < l2),\ncan be specified\
    \ multiple times"
  type: long?
  inputBinding:
    prefix: --path
- id: in_sb_map
  doc: 'FK: output map of structures and their respective'
  type: boolean?
  inputBinding:
    prefix: --sbmap
- id: in_trans
  doc: 'FK: output a list of all transient structures and their'
  type: boolean?
  inputBinding:
    prefix: --trans
- id: in_basins
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_neighbors
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
- id: in_rna
  doc: RNA secondary structures
  type: string
  inputBinding:
    position: 0
- id: in_rna_no_lp
  doc: "canonical RNA structures\n[no]Shift       with/out shift moves [default with]"
  type: string
  inputBinding:
    position: 1
- id: in_rna_two
  doc: "RNA secondary structures\n[no]Shift       with/out shift moves [default with]"
  type: long
  inputBinding:
    position: 2
- id: in_rna_two_no_lp
  doc: "canonical RNA structures, no lonely pairs\n[no]Shift       with/out shift\
    \ moves [default with]"
  type: long
  inputBinding:
    position: 3
- id: in_q_two
  doc: "Spin Glass\np               point mutation (default)\nc               flip\
    \ 2nd half"
  type: long
  inputBinding:
    position: 4
- id: in_nni
  doc: NNI moves [no other options yet]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barriers-RNA2
