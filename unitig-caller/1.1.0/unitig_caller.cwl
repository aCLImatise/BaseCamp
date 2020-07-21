class: CommandLineTool
id: ../../../unitig_caller.cwl
inputs:
- id: build
  doc: Build coloured/uncoloured de Bruijn graph using Bifrost
  type: boolean
  inputBinding:
    prefix: --build
- id: query
  doc: Query unitig presence/absence across input genomes
  type: boolean
  inputBinding:
    prefix: --query
- id: simple
  doc: Use FM-index to make calls
  type: boolean
  inputBinding:
    prefix: --simple
- id: refs
  doc: Ref file to use to --build bifrost graph (or with --simple)
  type: string
  inputBinding:
    prefix: --refs
- id: reads
  doc: Read file to use to --build bifrost graph
  type: string
  inputBinding:
    prefix: --reads
- id: graph_prefix
  doc: Prefix of bifrost graph to --query
  type: string
  inputBinding:
    prefix: --graph-prefix
- id: unit_igs
  doc: fasta file of unitigs to query (--query or --simple)
  type: string
  inputBinding:
    prefix: --unitigs
- id: output
  doc: Prefix for output [default = 'unitig_caller']
  type: string
  inputBinding:
    prefix: --output
- id: no_colour
  doc: Specify for uncoloured de Bruijn Graph [default = False]
  type: boolean
  inputBinding:
    prefix: --no_colour
- id: clean
  doc: Clean DBG (clip tips and delete isolated contigs shorter than k k-mers in length)
    [default = False]
  type: boolean
  inputBinding:
    prefix: --clean
- id: ratio_k
  doc: ratio of k-mers from queries that must occur in the graph to be considered
    as belonging to colour [default = 1.0]
  type: string
  inputBinding:
    prefix: --ratiok
- id: in_exact
  doc: Graph is searched with exact and inexact k-mers (1 substitution or indel) from
    queries [default = False]
  type: boolean
  inputBinding:
    prefix: --inexact
- id: km_er_size
  doc: K-mer size for graph building/querying [default = 31]
  type: string
  inputBinding:
    prefix: --kmer_size
- id: minimizer_size
  doc: Minimizer size to be used for k-mer hashing [default = 23]
  type: long
  inputBinding:
    prefix: --minimizer_size
- id: no_save_idx
  doc: Do not save FM-indexes for reuse
  type: boolean
  inputBinding:
    prefix: --no-save-idx
- id: threads
  doc: Number of threads to use [default = 1]
  type: string
  inputBinding:
    prefix: --threads
- id: bifrost
  doc: Location of bifrost executable [default = Bifrost]
  type: string
  inputBinding:
    prefix: --bifrost
outputs: []
cwlVersion: v1.1
baseCommand:
- unitig-caller
