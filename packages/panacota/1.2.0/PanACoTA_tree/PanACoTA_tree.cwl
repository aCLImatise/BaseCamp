class: CommandLineTool
id: PanACoTA_tree.cwl
inputs:
- id: in_alignment_file_multifasta
  doc: "Alignment file in multi-fasta: each header will be a\nleaf of the inferred\
    \ tree."
  type: File?
  inputBinding:
    prefix: -a
- id: in_directory_where_results
  doc: Directory where tree results will be saved.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_soft
  doc: "Choose with which software you want to infer the\nphylogenetic tree. Default\
    \ is IQtree2 (versions 2.x of\nIQtree). If you want version 1.x of IQtree, use\
    \ '-s\niqtree'"
  type: string?
  inputBinding:
    prefix: --soft
- id: in_boot
  doc: "Indicate how many bootstraps you want to compute. By\ndefault, no bootstrap\
    \ is calculated. For IQtree, it\nwill use ultrafast bootstrap (>=1000)."
  type: long?
  inputBinding:
    prefix: --boot
- id: in_threads
  doc: "add this option if you want to parallelize on several\nthreads. Indicate on\
    \ how many threads you want to\nparallelize. By default, it uses 1 thread. Put\
    \ 0 if\nyou want to use all threads of your computer. Not\navailable with quicktree."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_model
  doc: "Choose your DNA substitution model. Default for\nFastTree and IQtree: GTR.\
    \ Default for FastME: TN93.\nFor FastTree, the choices are 'GTR' and 'JC'. For\n\
    FastME, choices are: 'p-distance' (or 'p'), 'RY\nsymmetric' (or 'Y'), 'RY' (or\
    \ 'R'), 'JC69' (or 'J'),\n'K2P' (or 'K'), 'F81' (or '1'), 'F84' (or '4'), 'TN93'\n\
    (or 'T'), 'LogDet' (or 'L'). For IQtree, choices are\nHKY, JC, F81, K2P, K3P,\
    \ K81uf, TNef, TIM, TIMef, TVM,\nTVMef, SYM, GTR."
  type: long?
  inputBinding:
    prefix: --model
- id: in_add_option_you_want_write
  doc: "Add this option if you want to write all bootstrap\npseudo-trees. Only available\
    \ with FastME and IQtree."
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_mem
  doc: Maximal RAM usage in GB | MB. Only available with
  type: string?
  inputBinding:
    prefix: --mem
- id: in_verbose
  doc: Increase verbosity in stdout/stderr.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Do not display anything to stdout/stderr. log files\nwill still be created."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_iq_tree_dot
  doc: -fast                 Use -fast option with iqtree.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- PanACoTA
- tree
