class: CommandLineTool
id: HG_CoLoR.cwl
inputs:
- id: min_order
  doc: ':        Minimum k-mer size of the variable-order de Bruijn graph (default:
    K/2).'
  type: long
  inputBinding:
    prefix: --minorder
- id: solid
  doc: ':           Minimum number of occurrences to consider a short read k-mer as
    solid, after correction (default: 1). This parameter should be carefully raised
    accordingly to the short reads coverage and accuracy, and to the chosen maximum
    order of the graph. It should only be increased when using high coverage of short
    reads, or a small maximum order.'
  type: long
  inputBinding:
    prefix: --solid
- id: seeds_overlap
  doc: ':    Minimum overlap length to allow the merging of two overlapping seeds
    (default: K - 1).'
  type: long
  inputBinding:
    prefix: --seedsoverlap
- id: seeds_distance
  doc: ':   Maximum distance to consider two consecutive seeds for merging (default:
    10).'
  type: long
  inputBinding:
    prefix: --seedsdistance
- id: branches
  doc: ':        Maximum number of branches exploration (default: 1,250). Raising
    this parameter will result in less split corrected long reads. However, it will
    also increase the runtime, and may create chimeric linkings between the seeds.'
  type: long
  inputBinding:
    prefix: --branches
- id: seed_skips
  doc: ':       Maximum number of seed skips (default: 3).'
  type: long
  inputBinding:
    prefix: --seedskips
- id: mismatches
  doc: ':      Allowed mismatches when attempting to link two seeds together (default:
    3).'
  type: long
  inputBinding:
    prefix: --mismatches
- id: best_n
  doc: ':           Top alignments to be reported by BLASR (default: 50). This parameter
    should be raised accordingly to the short reads coverage. Its default value is
    adapted for a 50x coverage of short reads. It should be decreased with higher
    coverage, and increased with lower coverage.'
  type: long
  inputBinding:
    prefix: --bestn
- id: nproc
  doc: ':           Number of processes to run in parallel (default: number of cores).'
  type: long
  inputBinding:
    prefix: --nproc
- id: tmpdir
  doc: ':    Path where to store the directory containing temporary files (default:
    working directory).'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: kmc_mem
  doc: ':          Maximum amount of RAM for KMC, in GB (default: 12).'
  type: long
  inputBinding:
    prefix: --kmcmem
outputs: []
cwlVersion: v1.1
baseCommand:
- HG-CoLoR
