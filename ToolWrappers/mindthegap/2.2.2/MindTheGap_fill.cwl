class: CommandLineTool
id: MindTheGap_fill.cwl
inputs:
- id: in_in
  doc: "(1 arg) :    input read file(s)  [default '']"
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_graph
  doc: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_contig
  doc: "(1 arg) :    contig file  [default '']"
  type: boolean?
  inputBinding:
    prefix: -contig
- id: in_bk_pt
  doc: "(1 arg) :    breakpoint file  [default '']"
  type: boolean?
  inputBinding:
    prefix: -bkpt
- id: in_out
  doc: "(1 arg) :    prefix for output files  [default '']"
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_overlap
  doc: "(1 arg) :    Overlap between input contigs (default, ie. 0 = kmer size)  [default\
    \ '0']"
  type: boolean?
  inputBinding:
    prefix: -overlap
- id: in_filter
  doc: '(0 arg) :    do not output low quality insertions'
  type: boolean?
  inputBinding:
    prefix: -filter
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
  type: boolean?
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
  type: boolean?
  inputBinding:
    prefix: -abundance-max
- id: in_max_nodes
  doc: "(1 arg) :    maximum number of nodes in contig graph (nt)  [default '100']"
  type: boolean?
  inputBinding:
    prefix: -max-nodes
- id: in_max_length
  doc: "(1 arg) :    maximum length of insertions (nt)  [default '10000']"
  type: boolean?
  inputBinding:
    prefix: -max-length
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_max_disk
  doc: "(1 arg) :    max disk for graph building   (in MBytes)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -max-disk
- id: in_max_memory
  doc: "(1 arg) :    max memory for graph building (in MBytes)  [default '2000']"
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MindTheGap
- fill
