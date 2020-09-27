class: CommandLineTool
id: chisel_cloning.cwl
inputs:
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory
  inputBinding:
    prefix: --rundir
- id: in_max_diff
  doc: "Maximum haplotype-specific distance between the genome\nof cells in the same\
    \ clone (default: 0.06, when -1 is\nchosen the maximum cluster method of SciPy\
    \ is used)"
  type: long
  inputBinding:
    prefix: --maxdiff
- id: in_minsize
  doc: "Minimum number of cells in a subpopulation to define a\nclone (default: 14)"
  type: long
  inputBinding:
    prefix: --minsize
- id: in_upper_k
  doc: "Maximum number of bin clusters (default: 100, use 0 to\nconsider maximum number\
    \ of clusters)"
  type: long
  inputBinding:
    prefix: --upperk
- id: in_seed
  doc: 'Random seed for replication (default: None)'
  type: string
  inputBinding:
    prefix: --seed
- id: in_input
  doc: Input file with combined RDR and BAF per bin and per
  type: string
  inputBinding:
    position: 0
- id: in_cell
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chisel_cloning
