class: CommandLineTool
id: epa_ng.cwl
inputs:
- id: in_verbose
  doc: Display debug output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_b_fast
  doc: :FILE        Convert the given fasta file to bfast format.
  type: File?
  inputBinding:
    prefix: --bfast
- id: in_dump_binary
  doc: 'Binary Dump mode: write ref. tree in binary format then exit. NOTE: not compatible
    with premasking!'
  type: boolean?
  inputBinding:
    prefix: --dump-binary
- id: in_split
  doc: ':FILE ...       Takes a reference MSA (phylip/fasta/fasta.gz) and combined
    ref + query MSA(s) (phylip/fasta/fasta.gz) and outputs a monolithic query file
    (fasta), as well as a reference file (fasta), ready for use. Usage: epa-ng --split
    ref_alignment query_alignments+'
  type: File?
  inputBinding:
    prefix: --split
- id: in_tree
  doc: ":FILE Excludes: --binary\nPath to Reference Tree file."
  type: File?
  inputBinding:
    prefix: --tree
- id: in_ref_msa
  doc: ":FILE Excludes: --binary\nPath to Reference MSA file."
  type: File?
  inputBinding:
    prefix: --ref-msa
- id: in_binary
  doc: ":FILE Excludes: --tree --ref-msa\nPath to binary reference file, as created\
    \ using --dump-binary."
  type: File?
  inputBinding:
    prefix: --binary
- id: in_query
  doc: :FILE        Path to Query MSA file.
  type: File?
  inputBinding:
    prefix: --query
- id: in_model
  doc: '=GTR+G       Description string of the model to be used, or a RAxML_info file.
    --model STRING | FILE See: https://github.com/amkozlov/raxml-ng/wiki/Input-data#evolutionary-model'
  type: File?
  inputBinding:
    prefix: --model
- id: in_out_dir
  doc: ":DIR=./\nPath to output directory."
  type: File?
  inputBinding:
    prefix: --out-dir
- id: in_filter_acc_lwr
  doc: ":FLOAT in [0 - 1] Excludes: --filter-min-lwr\nAccumulated likelihood weight\
    \ after which further placements are discarded."
  type: double?
  inputBinding:
    prefix: --filter-acc-lwr
- id: in_filter_min_lwr
  doc: ":FLOAT in [0 - 1]=0.01 Excludes: --filter-acc-lwr\nMinimum likelihood weight\
    \ below which a placement is discarded."
  type: double?
  inputBinding:
    prefix: --filter-min-lwr
- id: in_filter_min
  doc: =1         Minimum number of placements per sequence to include in final output.
  type: long?
  inputBinding:
    prefix: --filter-min
- id: in_filter_max
  doc: =7         Maximum number of placements per sequence to include in final output.
  type: long?
  inputBinding:
    prefix: --filter-max
- id: in_precision
  doc: =10         Output decimal point precision for floating point numbers.
  type: double?
  inputBinding:
    prefix: --precision
- id: in_redo
  doc: Overwrite existing files.
  type: boolean?
  inputBinding:
    prefix: --redo
- id: in_preserve_rooting
  doc: ":{off,on}\nPreserve the rooting of rooted trees. When disabled, EPA-ng will\
    \ print the result as an unrooted tree."
  type: string?
  inputBinding:
    prefix: --preserve-rooting
- id: in_dyn_heur
  doc: ":FLOAT in [0 - 1]=0.99999 Excludes: --fix-heur --baseball-heur --no-heur\n\
    Two-phase heuristic, determination of candidate edges using accumulative threshold.\
    \ Enabled by default! See --no-heur for disabling it"
  type: double?
  inputBinding:
    prefix: --dyn-heur
- id: in_fix_heur
  doc: ":FLOAT in [0 - 1] Excludes: --dyn-heur --baseball-heur --no-heur\nTwo-phase\
    \ heuristic, determination of candidate edges by specified percentage of total\
    \ edges."
  type: double?
  inputBinding:
    prefix: --fix-heur
- id: in_baseball_heur
  doc: ": --dyn-heur --fix-heur --no-heur\nBaseball heuristic as known from pplacer.\
    \ strike_box=3,max_strikes=6,max_pitches=40."
  type: long?
  inputBinding:
    prefix: --baseball-heur
- id: in_no_heur
  doc: ": --dyn-heur --fix-heur --baseball-heur\nDisables heuristic preplacement completely.\
    \ Overrides all other heuristic flags."
  type: string?
  inputBinding:
    prefix: --no-heur
- id: in_chunk_size
  doc: =5000      Number of query sequences to be read in at a time. May influence
    performance.
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_ra_xml_blo
  doc: 'Employ old style of branch length optimization during thorough insertion as
    opposed to sliding approach. WARNING: may significantly slow down computation.'
  type: boolean?
  inputBinding:
    prefix: --raxml-blo
- id: in_no_pre_mask
  doc: Do NOT pre-mask sequences. Enables repeats unless --no-repeats is also specified.
  type: boolean?
  inputBinding:
    prefix: --no-pre-mask
- id: in_rate_scalers
  doc: ":{off,on,auto}\nUse individual rate scalers. Important to avoid numerical\
    \ underflow in taxa rich trees."
  type: string?
  inputBinding:
    prefix: --rate-scalers
- id: in_threads
  doc: =0         Number of threads to use. If 0 is passed as argument,program will
    run with the maximum number of threads available.
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: ":DIR=./\nPath to output directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- epa-ng
