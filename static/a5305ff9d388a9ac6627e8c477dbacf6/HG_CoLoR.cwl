class: CommandLineTool
id: HG_CoLoR.cwl
inputs:
- id: in_min_order
  doc: ':        Minimum k-mer size of the variable-order de Bruijn graph (default:
    K/2).'
  type: long?
  inputBinding:
    prefix: --minorder
- id: in_solid
  doc: ":           Minimum number of occurrences to consider a short read k-mer as\
    \ solid, after correction (default: 1).\nThis parameter should be carefully raised\
    \ accordingly to the short reads coverage and accuracy,\nand to the chosen maximum\
    \ order of the graph.\nIt should only be increased when using high coverage of\
    \ short reads, or a small maximum order."
  type: long?
  inputBinding:
    prefix: --solid
- id: in_seeds_overlap
  doc: ':    Minimum overlap length to allow the merging of two overlapping seeds
    (default: K - 1).'
  type: long?
  inputBinding:
    prefix: --seedsoverlap
- id: in_seeds_distance
  doc: ':   Maximum distance to consider two consecutive seeds for merging (default:
    10).'
  type: long?
  inputBinding:
    prefix: --seedsdistance
- id: in_branches
  doc: ":        Maximum number of branches exploration (default: 1,250).\nRaising\
    \ this parameter will result in less split corrected long reads.\nHowever, it\
    \ will also increase the runtime, and may create chimeric linkings between the\
    \ seeds."
  type: long?
  inputBinding:
    prefix: --branches
- id: in_seed_skips
  doc: ':       Maximum number of seed skips (default: 3).'
  type: long?
  inputBinding:
    prefix: --seedskips
- id: in_mismatches
  doc: ':      Allowed mismatches when attempting to link two seeds together (default:
    3).'
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_best_n
  doc: ":           Top alignments to be reported by BLASR (default: 50).\nThis parameter\
    \ should be raised accordingly to the short reads coverage.\nIts default value\
    \ is adapted for a 50x coverage of short reads.\nIt should be decreased with higher\
    \ coverage, and increased with lower coverage."
  type: long?
  inputBinding:
    prefix: --bestn
- id: in_nproc
  doc: ':           Number of processes to run in parallel (default: number of cores).'
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_tmpdir
  doc: ':    Path where to store the directory containing temporary files (default:
    working directory).'
  type: File?
  inputBinding:
    prefix: --tmpdir
- id: in_kmc_mem
  doc: ':          Maximum amount of RAM for KMC, in GB (default: 12).'
  type: long?
  inputBinding:
    prefix: --kmcmem
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HG-CoLoR
