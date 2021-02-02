class: CommandLineTool
id: unitig_caller.cwl
inputs:
- id: in_build
  doc: Build coloured/uncoloured de Bruijn graph using
  type: boolean
  inputBinding:
    prefix: --build
- id: in_simple
  doc: Use FM-index to make calls
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_refs
  doc: Ref file to use to --build bifrost graph (or with
  type: File
  inputBinding:
    prefix: --refs
- id: in_reads
  doc: Read file to use to --build bifrost graph
  type: File
  inputBinding:
    prefix: --reads
- id: in_graph_prefix
  doc: Prefix of bifrost graph to --query
  type: string
  inputBinding:
    prefix: --graph-prefix
- id: in_unit_igs
  doc: fasta file of unitigs to query (--query or --simple)
  type: File
  inputBinding:
    prefix: --unitigs
- id: in_output
  doc: Prefix for output [default = 'unitig_caller']
  type: string
  inputBinding:
    prefix: --output
- id: in_no_colour
  doc: "Specify for uncoloured de Bruijn Graph [default =\nFalse]"
  type: boolean
  inputBinding:
    prefix: --no_colour
- id: in_clean
  doc: "Clean DBG (clip tips and delete isolated contigs\nshorter than k k-mers in\
    \ length) [default = False]"
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_ratio_k
  doc: "ratio of k-mers from queries that must occur in the\ngraph to be considered\
    \ as belonging to colour [default\n= 1.0]"
  type: double
  inputBinding:
    prefix: --ratiok
- id: in_in_exact
  doc: "Graph is searched with exact and inexact k-mers (1\nsubstitution or indel)\
    \ from queries [default = False]"
  type: boolean
  inputBinding:
    prefix: --inexact
- id: in_km_er_size
  doc: K-mer size for graph building/querying [default = 31]
  type: long
  inputBinding:
    prefix: --kmer_size
- id: in_minimizer_size
  doc: "Minimizer size to be used for k-mer hashing [default =\n23]"
  type: long
  inputBinding:
    prefix: --minimizer_size
- id: in_no_save_idx
  doc: Do not save FM-indexes for reuse
  type: boolean
  inputBinding:
    prefix: --no-save-idx
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_location_bifrost_executable
  doc: Location of bifrost executable [default = Bifrost]
  type: string
  inputBinding:
    prefix: --bifrost
- id: in__query_query
  doc: --query               Query unitig presence/absence across input genomes
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unitig-caller
