class: CommandLineTool
id: model_and_analyze.py.cwl
inputs:
- id: cfg
  doc: path to a configuration file with predefined parameters
  type: File
  inputBinding:
    prefix: --cfg
- id: analyze_only
  doc: load precomputed models in outdir, skip optimization, modeling
  type: boolean
  inputBinding:
    prefix: --analyze_only
- id: optimize_only
  doc: do the optimization of the region and exit
  type: boolean
  inputBinding:
    prefix: --optimize_only
- id: model_only
  doc: skip optimization, model with inputparameters only.
  type: boolean
  inputBinding:
    prefix: --model_only
- id: tad_only
  doc: '[False] exit after searching for TADs'
  type: boolean
  inputBinding:
    prefix: --tad_only
- id: n_cpus
  doc: '[1] Number of CPUs to use'
  type: long
  inputBinding:
    prefix: --ncpus
- id: root_path
  doc: path to search for data files (just pass file namein "data")
  type: File
  inputBinding:
    prefix: --root_path
- id: data
  doc: 'path to file(s) with Hi-C data matrix. If many, experiments will be summed
    up. I.e.: --data replicate_1.txt replicate_2.txt'
  type: File[]
  inputBinding:
    prefix: --data
- id: biases
  doc: path to pickle file(s) with Hi-C data matrix biases. Use same order as data.
    If data are bam files use these biases to skip normalization
  type: File[]
  inputBinding:
    prefix: --biases
- id: x_name
  doc: '[file name] experiment name(s). Use same order as data.'
  type: string[]
  inputBinding:
    prefix: --xname
- id: norm
  doc: path to file(s) with normalizedHi-C data matrix.
  type: File[]
  inputBinding:
    prefix: --norm
- id: perc_zeros
  doc: '[95%] maximum percentage of zeroes allowed per column.'
  type: double
  inputBinding:
    prefix: --perc_zeros
- id: min_count
  doc: '[None] minimum number of reads mapped to a bin (recommended value could be
    2500). If set this option overrides the perc_zero filtering... This option is
    slightly slower.'
  type: long
  inputBinding:
    prefix: --min_count
- id: crm
  doc: chromosome name
  type: string
  inputBinding:
    prefix: --crm
- id: beg
  doc: genomic coordinate from which to start modeling
  type: long
  inputBinding:
    prefix: --beg
- id: chrom_start
  doc: genomic coordinate corresponding to the bin 0 of the input matrices
  type: long
  inputBinding:
    prefix: --chrom_start
- id: end
  doc: genomic coordinate where to end modeling
  type: long
  inputBinding:
    prefix: --end
- id: res
  doc: resolution of the Hi-C experiment
  type: long
  inputBinding:
    prefix: --res
- id: fig_format
  doc: file format and extension for figures and plots (can be any supported by matplotlib,
    png, eps...)
  type: string
  inputBinding:
    prefix: --fig_format
- id: outdir
  doc: out directory for results
  type: File
  inputBinding:
    prefix: --outdir
- id: tad
  doc: '[False] search for TADs in experiments'
  type: boolean
  inputBinding:
    prefix: --tad
- id: centromere
  doc: '[False] search for centromeric region'
  type: boolean
  inputBinding:
    prefix: --centromere
- id: group
  doc: '[all together] How to group Hi-C experiments for the detection of TAD borders.
    I.e.: "--exp_group 2 2 1" first 2 experiments used together, next 2 also, and
    last alone (batch_mode option used)'
  type: long[]
  inputBinding:
    prefix: --group
- id: max_dist
  doc: range of numbers for maxdist, i.e. 400:1000:100 -- or just a number
  type: string
  inputBinding:
    prefix: --maxdist
- id: up_freq
  doc: range of numbers for upfreq, i.e. 0:1.2:0.3 -- or just a number
  type: string
  inputBinding:
    prefix: --upfreq
- id: low_freq
  doc: range of numbers for lowfreq, i.e. -1.2:0:0.3 -- or just a number
  type: string
  inputBinding:
    prefix: --lowfreq
- id: scale
  doc: '[0.01] range of numbers to be test as optimal scale value, i.e. 0.005:0.01:0.001
    -- Can also pass only one number'
  type: string
  inputBinding:
    prefix: --scale
- id: d_cut_off
  doc: '[2] range of numbers to be test as optimal distance cutoff parameter (distance,
    in number of beads, from which to consider 2 beads as being close), i.e. 1:5:0.5
    -- Can also pass only one number'
  type: string
  inputBinding:
    prefix: --dcutoff
- id: n_models_opt
  doc: '[500] number of models to generate for optimization'
  type: long
  inputBinding:
    prefix: --nmodels_opt
- id: n_keep_opt
  doc: '[100] number of models to keep for optimization'
  type: long
  inputBinding:
    prefix: --nkeep_opt
- id: force_opt
  doc: '[False] do not take into account previous optimizations. Usefull for running
    in parallel in a cluster for example.'
  type: boolean
  inputBinding:
    prefix: --force_opt
- id: n_models_mod
  doc: '[5000] number of models to generate for modeling'
  type: long
  inputBinding:
    prefix: --nmodels_mod
- id: n_keep_mod
  doc: '[1000] number of models to keep for modeling'
  type: long
  inputBinding:
    prefix: --nkeep_mod
- id: seed
  doc: '[1] seed number from which to start modeling'
  type: long
  inputBinding:
    prefix: --seed
- id: species
  doc: 'species name, with no spaces, i.e.: homo_sapiens'
  type: string
  inputBinding:
    prefix: --species
- id: cell
  doc: cell type name
  type: string
  inputBinding:
    prefix: --cell
- id: exp_type
  doc: 'experiment type name (i.e.: Hi-C)'
  type: string
  inputBinding:
    prefix: --exp_type
- id: assembly
  doc: 'NCBI ID of the original assembly (i.e.: NCBI36 for human)'
  type: string
  inputBinding:
    prefix: --assembly
- id: enzyme
  doc: name of the enzyme used to digest chromatin (i.e. HindIII)
  type: string
  inputBinding:
    prefix: --enzyme
- id: identifier
  doc: NCBI identifier of the experiment
  type: string
  inputBinding:
    prefix: --identifier
- id: project
  doc: project name
  type: string
  inputBinding:
    prefix: --project
- id: analyze
  doc: '[2 3 4 5 6 7 8 9 10 11 12 13 14 15 16] list of numbers representing the analysis
    to be done. Choose between: 0) do nothing 1) column filtering 2) TAD borders 3)
    TAD alignment 4) optimization plot 5) correlation real/models 6) z-score plot
    7) constraints 8) objective function 9) centroid 10) consistency 11) density 12)
    contact map 13) walking angle 14) persistence length 15) accessibility 16) interaction'
  type: long[]
  inputBinding:
    prefix: --analyze
- id: not_write_cmm
  doc: '[False] do not generate cmm files for each model (Chimera input)'
  type: boolean
  inputBinding:
    prefix: --not_write_cmm
- id: not_write_xyz
  doc: '[False] do not generate xyz files for each model (3D coordinates)'
  type: boolean
  inputBinding:
    prefix: --not_write_xyz
- id: not_write_json
  doc: '[False] do not generate json file.'
  type: boolean
  inputBinding:
    prefix: --not_write_json
outputs: []
cwlVersion: v1.1
baseCommand:
- model_and_analyze.py
