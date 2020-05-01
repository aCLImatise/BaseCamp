#!/usr/bin/env cwl-runner

baseCommand:
- epa-ng
class: CommandLineTool
cwlVersion: v1.0
id: epa-ng
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: Display debug output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: :FILE        Convert the given fasta file to bfast format.
  id: b_fast
  inputBinding:
    prefix: --bfast
  type: string
- doc: 'Binary Dump mode: write ref. tree in binary format then exit. NOTE: not compatible
    with premasking!'
  id: dump_binary
  inputBinding:
    prefix: --dump-binary
  type: boolean
- doc: ':FILE ...       Takes a reference MSA (phylip/fasta/fasta.gz) and combined
    ref + query MSA(s) (phylip/fasta/fasta.gz) and outputs a monolithic query file
    (fasta), as well as a reference file (fasta), ready for use. Usage: epa-ng --split
    ref_alignment query_alignments+'
  id: split
  inputBinding:
    prefix: --split
  type: string
- doc: ':FILE Excludes: --binary Path to Reference Tree file.'
  id: tree
  inputBinding:
    prefix: --tree
  type: string
- doc: ':FILE Excludes: --binary Path to Reference MSA file.'
  id: ref_msa
  inputBinding:
    prefix: --ref-msa
  type: string
- doc: ':FILE Excludes: --tree --ref-msa Path to binary reference file, as created
    using --dump-binary.'
  id: binary
  inputBinding:
    prefix: --binary
  type: string
- doc: :FILE        Path to Query MSA file.
  id: query
  inputBinding:
    prefix: --query
  type: string
- doc: '=GTR+G       Description string of the model to be used, or a RAxML_info file.
    --model STRING | FILE See: https://github.com/amkozlov/raxml-ng/wiki/Input-data#evolutionary-model'
  id: model
  inputBinding:
    prefix: --model
  type: string
- doc: :DIR=./ Path to output directory.
  id: out_dir
  inputBinding:
    prefix: --out-dir
  type: string
- doc: ':FLOAT in [0 - 1] Excludes: --filter-min-lwr Accumulated likelihood weight
    after which further placements are discarded.'
  id: filter_acc_lwr
  inputBinding:
    prefix: --filter-acc-lwr
  type: double
- doc: ':FLOAT in [0 - 1]=0.01 Excludes: --filter-acc-lwr Minimum likelihood weight
    below which a placement is discarded.'
  id: filter_min_lwr
  inputBinding:
    prefix: --filter-min-lwr
  type: double
- doc: =1         Minimum number of placements per sequence to include in final output.
  id: filter_min
  inputBinding:
    prefix: --filter-min
  type: string
- doc: =7         Maximum number of placements per sequence to include in final output.
  id: filter_max
  inputBinding:
    prefix: --filter-max
  type: string
- doc: =10         Output decimal point precision for floating point numbers.
  id: precision
  inputBinding:
    prefix: --precision
  type: string
- doc: Overwrite existing files.
  id: redo
  inputBinding:
    prefix: --redo
  type: boolean
- doc: :{off,on} Preserve the rooting of rooted trees. When disabled, EPA-ng will
    print the result as an unrooted tree.
  id: preserve_rooting
  inputBinding:
    prefix: --preserve-rooting
  type: string
- doc: ':FLOAT in [0 - 1]=0.99999 Excludes: --fix-heur --baseball-heur --no-heur Two-phase
    heuristic, determination of candidate edges using accumulative threshold. Enabled
    by default! See --no-heur for disabling it'
  id: dyn_heur
  inputBinding:
    prefix: --dyn-heur
  type: double
- doc: ':FLOAT in [0 - 1] Excludes: --dyn-heur --baseball-heur --no-heur Two-phase
    heuristic, determination of candidate edges by specified percentage of total edges.'
  id: fix_heur
  inputBinding:
    prefix: --fix-heur
  type: double
- doc: ': --dyn-heur --fix-heur --no-heur Baseball heuristic as known from pplacer.
    strike_box=3,max_strikes=6,max_pitches=40.'
  id: baseball_heur
  inputBinding:
    prefix: --baseball-heur
  type: string
- doc: ': --dyn-heur --fix-heur --baseball-heur Disables heuristic preplacement completely.
    Overrides all other heuristic flags.'
  id: no_heur
  inputBinding:
    prefix: --no-heur
  type: string
- doc: =5000      Number of query sequences to be read in at a time. May influence
    performance.
  id: chunk_size
  inputBinding:
    prefix: --chunk-size
  type: string
- doc: 'Employ old style of branch length optimization during thorough insertion as
    opposed to sliding approach. WARNING: may significantly slow down computation.'
  id: ra_xml_blo
  inputBinding:
    prefix: --raxml-blo
  type: boolean
- doc: Do NOT pre-mask sequences. Enables repeats unless --no-repeats is also specified.
  id: no_pre_mask
  inputBinding:
    prefix: --no-pre-mask
  type: boolean
- doc: :{off,on,auto} Use individual rate scalers. Important to avoid numerical underflow
    in taxa rich trees.
  id: rate_scalers
  inputBinding:
    prefix: --rate-scalers
  type: string
- doc: =0         Number of threads to use. If 0 is passed as argument,program will
    run with the maximum number of threads available.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
