class: CommandLineTool
id: epa_ng.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Display debug output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: b_fast
  doc: :FILE        Convert the given fasta file to bfast format.
  type: string
  inputBinding:
    prefix: --bfast
- id: dump_binary
  doc: 'Binary Dump mode: write ref. tree in binary format then exit. NOTE: not compatible
    with premasking!'
  type: boolean
  inputBinding:
    prefix: --dump-binary
- id: split
  doc: ':FILE ...       Takes a reference MSA (phylip/fasta/fasta.gz) and combined
    ref + query MSA(s) (phylip/fasta/fasta.gz) and outputs a monolithic query file
    (fasta), as well as a reference file (fasta), ready for use. Usage: epa-ng --split
    ref_alignment query_alignments+'
  type: string
  inputBinding:
    prefix: --split
- id: tree
  doc: ':FILE Excludes: --binary Path to Reference Tree file.'
  type: string
  inputBinding:
    prefix: --tree
- id: ref_msa
  doc: ':FILE Excludes: --binary Path to Reference MSA file.'
  type: string
  inputBinding:
    prefix: --ref-msa
- id: binary
  doc: ':FILE Excludes: --tree --ref-msa Path to binary reference file, as created
    using --dump-binary.'
  type: string
  inputBinding:
    prefix: --binary
- id: query
  doc: :FILE        Path to Query MSA file.
  type: string
  inputBinding:
    prefix: --query
- id: model
  doc: '=GTR+G       Description string of the model to be used, or a RAxML_info file.
    --model STRING | FILE See: https://github.com/amkozlov/raxml-ng/wiki/Input-data#evolutionary-model'
  type: string
  inputBinding:
    prefix: --model
- id: out_dir
  doc: :DIR=./ Path to output directory.
  type: string
  inputBinding:
    prefix: --out-dir
- id: filter_acc_lwr
  doc: ':FLOAT in [0 - 1] Excludes: --filter-min-lwr Accumulated likelihood weight
    after which further placements are discarded.'
  type: double
  inputBinding:
    prefix: --filter-acc-lwr
- id: filter_min_lwr
  doc: ':FLOAT in [0 - 1]=0.01 Excludes: --filter-acc-lwr Minimum likelihood weight
    below which a placement is discarded.'
  type: double
  inputBinding:
    prefix: --filter-min-lwr
- id: filter_min
  doc: =1         Minimum number of placements per sequence to include in final output.
  type: string
  inputBinding:
    prefix: --filter-min
- id: filter_max
  doc: =7         Maximum number of placements per sequence to include in final output.
  type: string
  inputBinding:
    prefix: --filter-max
- id: precision
  doc: =10         Output decimal point precision for floating point numbers.
  type: string
  inputBinding:
    prefix: --precision
- id: redo
  doc: Overwrite existing files.
  type: boolean
  inputBinding:
    prefix: --redo
- id: preserve_rooting
  doc: :{off,on} Preserve the rooting of rooted trees. When disabled, EPA-ng will
    print the result as an unrooted tree.
  type: string
  inputBinding:
    prefix: --preserve-rooting
- id: dyn_heur
  doc: ':FLOAT in [0 - 1]=0.99999 Excludes: --fix-heur --baseball-heur --no-heur Two-phase
    heuristic, determination of candidate edges using accumulative threshold. Enabled
    by default! See --no-heur for disabling it'
  type: double
  inputBinding:
    prefix: --dyn-heur
- id: fix_heur
  doc: ':FLOAT in [0 - 1] Excludes: --dyn-heur --baseball-heur --no-heur Two-phase
    heuristic, determination of candidate edges by specified percentage of total edges.'
  type: double
  inputBinding:
    prefix: --fix-heur
- id: baseball_heur
  doc: ': --dyn-heur --fix-heur --no-heur Baseball heuristic as known from pplacer.
    strike_box=3,max_strikes=6,max_pitches=40.'
  type: string
  inputBinding:
    prefix: --baseball-heur
- id: no_heur
  doc: ': --dyn-heur --fix-heur --baseball-heur Disables heuristic preplacement completely.
    Overrides all other heuristic flags.'
  type: string
  inputBinding:
    prefix: --no-heur
- id: chunk_size
  doc: =5000      Number of query sequences to be read in at a time. May influence
    performance.
  type: string
  inputBinding:
    prefix: --chunk-size
- id: ra_xml_blo
  doc: 'Employ old style of branch length optimization during thorough insertion as
    opposed to sliding approach. WARNING: may significantly slow down computation.'
  type: boolean
  inputBinding:
    prefix: --raxml-blo
- id: no_pre_mask
  doc: Do NOT pre-mask sequences. Enables repeats unless --no-repeats is also specified.
  type: boolean
  inputBinding:
    prefix: --no-pre-mask
- id: rate_scalers
  doc: :{off,on,auto} Use individual rate scalers. Important to avoid numerical underflow
    in taxa rich trees.
  type: string
  inputBinding:
    prefix: --rate-scalers
- id: threads
  doc: =0         Number of threads to use. If 0 is passed as argument,program will
    run with the maximum number of threads available.
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- epa-ng
