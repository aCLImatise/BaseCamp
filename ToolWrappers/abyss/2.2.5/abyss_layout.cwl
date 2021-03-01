class: CommandLineTool
id: abyss_layout.cwl
inputs:
- id: in_min_length
  doc: minimum sequence length [0]
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_overlap
  doc: minimum overlap [0]
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_km_er
  doc: length of a k-mer
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_out
  doc: write the paths to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_graph
  doc: write the graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_tred
  doc: remove transitive edges
  type: boolean?
  inputBinding:
    prefix: --tred
- id: in_no_tred
  doc: do not remove transitive edges [default]
  type: boolean?
  inputBinding:
    prefix: --no-tred
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation [default]
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_overlap
  doc: the sequence overlap graph
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-layout
