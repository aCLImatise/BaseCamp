class: CommandLineTool
id: sibeliaz_lcb.cwl
inputs:
- id: in_no_seq
  doc: Do not output blocks sequences
  type: boolean?
  inputBinding:
    prefix: --noseq
- id: in_outdir
  doc: Output dir for blocks sequences
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_graph
  doc: (required)  Binary file containing the graph
  type: File?
  inputBinding:
    prefix: --graph
- id: in_abundance
  doc: Max abundance of a junction
  type: long?
  inputBinding:
    prefix: --abundance
- id: in_threads
  doc: Number of worker threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_block_size
  doc: Minimum block size
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_branch_size
  doc: Maximum branch size
  type: long?
  inputBinding:
    prefix: --branchsize
- id: in_k_value
  doc: Value of k
  type: string?
  inputBinding:
    prefix: --kvalue
- id: in_integer
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- sibeliaz-lcb
