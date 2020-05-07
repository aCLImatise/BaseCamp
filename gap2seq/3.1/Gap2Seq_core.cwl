class: CommandLineTool
id: Gap2Seq_core.cwl
inputs:
- id: length
  doc: "(1 arg) :    Length of a single gap  [default '']"
  type: boolean
  inputBinding:
    prefix: -length
- id: right
  doc: "(1 arg) :    Right flank of a single gap  [default '']"
  type: boolean
  inputBinding:
    prefix: -right
- id: left
  doc: "(1 arg) :    Left flank of a single gap  [default '']"
  type: boolean
  inputBinding:
    prefix: -left
- id: rand_seed
  doc: "(1 arg) :    Random seed (0 to use current time)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -randseed
- id: unique
  doc: '(0 arg) :    If specified, only gaps with a unique path of best length are
    filled.'
  type: boolean
  inputBinding:
    prefix: -unique
- id: best_only
  doc: '(0 arg) :    If specified, only paths that have optimal length are considered.'
  type: boolean
  inputBinding:
    prefix: -best-only
- id: all_upper
  doc: '(0 arg) :    If specified, all filled bases are in upper case.'
  type: boolean
  inputBinding:
    prefix: -all-upper
- id: max_mem
  doc: "(1 arg) :    Maximum memory usage of DP table computation in gigabytes (excluding\
    \ DBG)  [default '20']"
  type: boolean
  inputBinding:
    prefix: -max-mem
- id: fuz
  doc: "(1 arg) :    Number of nucleotides to ignore on gap fringes  [default '10']"
  type: boolean
  inputBinding:
    prefix: -fuz
- id: dist_error
  doc: "(1 arg) :    Maximum error in gap estimates  [default '500']"
  type: boolean
  inputBinding:
    prefix: -dist-error
- id: filled
  doc: '(1 arg) :    FASTA file of filled scaffolds'
  type: boolean
  inputBinding:
    prefix: -filled
- id: scaffolds
  doc: "(1 arg) :    FASTA/Q file of scaffolds  [default '']"
  type: boolean
  inputBinding:
    prefix: -scaffolds
- id: reads
  doc: '(1 arg) :    FASTA/Q files of reads. For several files use a comma separated
    list.'
  type: boolean
  inputBinding:
    prefix: -reads
- id: solid
  doc: "(1 arg) :    Threshold for solid k-mers  [default '2']"
  type: boolean
  inputBinding:
    prefix: -solid
- id: k
  doc: "(1 arg) :    k-mer length  [default '31']"
  type: boolean
  inputBinding:
    prefix: -k
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- Gap2Seq-core
