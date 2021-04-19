class: CommandLineTool
id: metagraph_clean.cwl
inputs:
- id: in_min_count
  doc: '[INT]            min k-mer abundance, including [1]'
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_max_count
  doc: '[INT]            max k-mer abundance, excluding [inf]'
  type: boolean?
  inputBinding:
    prefix: --max-count
- id: in_num_singletons
  doc: '[INT]       reset the number of count 1 k-mers in histogram (0: off) [0]'
  type: boolean?
  inputBinding:
    prefix: --num-singletons
- id: in_prune_tips
  doc: '[INT]           prune all dead ends shorter than this value [1]'
  type: boolean?
  inputBinding:
    prefix: --prune-tips
- id: in_prune_unit_igs
  doc: "[INT]        prune all unitigs with median k-mer counts smaller\nthan this\
    \ value (0: auto) [1]"
  type: boolean?
  inputBinding:
    prefix: --prune-unitigs
- id: in_fall_back
  doc: "[INT]             fallback threshold if the automatic one cannot be\ndetermined\
    \ (-1: disables fallback) [1]"
  type: boolean?
  inputBinding:
    prefix: --fallback
- id: in_count_bins_q
  doc: "[FLOAT ...]   binning quantiles for partitioning k-mers with\ndifferent abundance\
    \ levels ['0 1']\nExample: --count-bins-q '0 0.33 0.66 1'"
  type: boolean?
  inputBinding:
    prefix: --count-bins-q
- id: in_unit_igs
  doc: extract unitigs instead of contigs [off]
  type: boolean?
  inputBinding:
    prefix: --unitigs
- id: in_to_fast_a
  doc: dump clean sequences to compressed FASTA file [off]
  type: boolean?
  inputBinding:
    prefix: --to-fasta
- id: in_enumerate
  doc: enumerate sequences in FASTA [off]
  type: boolean?
  inputBinding:
    prefix: --enumerate
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph
- clean
