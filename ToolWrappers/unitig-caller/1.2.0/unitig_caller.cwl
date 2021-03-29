class: CommandLineTool
id: unitig_caller.cwl
inputs:
- id: in_call
  doc: Build a DBG and call colours of unitigs within
  type: boolean?
  inputBinding:
    prefix: --call
- id: in_query
  doc: Query unitig colours in reference genomes/DBG
  type: boolean?
  inputBinding:
    prefix: --query
- id: in_simple
  doc: Use FM-index to make calls
  type: boolean?
  inputBinding:
    prefix: --simple
- id: in_refs
  doc: Ref file to used to build DBG or use with --simple
  type: File?
  inputBinding:
    prefix: --refs
- id: in_reads
  doc: Read file to used to build DBG
  type: File?
  inputBinding:
    prefix: --reads
- id: in_graph
  doc: Existing graph in GFA format
  type: string?
  inputBinding:
    prefix: --graph
- id: in_colours
  doc: Existing bifrost colours file in .bfg_colors format
  type: File?
  inputBinding:
    prefix: --colours
- id: in_unit_igs
  doc: Text or fasta file of unitigs to query (--query or
  type: File?
  inputBinding:
    prefix: --unitigs
- id: in_py_seer
  doc: Output pyseer format
  type: boolean?
  inputBinding:
    prefix: --pyseer
- id: in_r_tab
  doc: Output rtab format
  type: boolean?
  inputBinding:
    prefix: --rtab
- id: in_out
  doc: Prefix for output [default = 'unitig_caller']
  type: string?
  inputBinding:
    prefix: --out
- id: in_km_er
  doc: K-mer size for graph building/querying [default = 31]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_write_graph
  doc: Output DBG built with unitig-caller
  type: boolean?
  inputBinding:
    prefix: --write-graph
- id: in_no_save_idx
  doc: Do not save FM-indexes for reuse
  type: boolean?
  inputBinding:
    prefix: --no-save-idx
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unitig-caller:1.2.0--py38hfcc51a0_0
cwlVersion: v1.1
baseCommand:
- unitig-caller
