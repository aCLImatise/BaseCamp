class: CommandLineTool
id: spades_gsimplifier.cwl
inputs:
- id: gfa
  doc: 'produce GFA output (default: true)'
  type: boolean
  inputBinding:
    prefix: --gfa
- id: spades_gp
  doc: "output graph pack in SPAdes internal format (default: false). Recommended\
    \ if bulges are removed to improve further read mapping. In case GFA output is\
    \ required with graph pack specify '--gfa'"
  type: string
  inputBinding:
    prefix: --spades-gp
- id: use_cov_ratios
  doc: 'enable procedures based on unitig coverage ratios (default: false)'
  type: boolean
  inputBinding:
    prefix: --use-cov-ratios
- id: k
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: read_length
  doc: read length
  type: string
  inputBinding:
    prefix: --read-length
- id: coverage
  doc: "estimated average (k+1-mer) bin coverage (default: 0.) or 'auto' (works only\
    \ with '-d/--dead-ends' provided)"
  type: string
  inputBinding:
    prefix: --coverage
- id: threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: string
  inputBinding:
    prefix: --threads
- id: profile
  doc: file with edge coverage profiles across multiple samples
  type: File
  inputBinding:
    prefix: --profile
- id: stop_codons
  doc: file stop codon positions
  type: File
  inputBinding:
    prefix: --stop-codons
- id: dead_ends
  doc: while processing a subgraph -- file listing edges which are dead-ends in the
    original graph
  type: File
  inputBinding:
    prefix: --dead-ends
- id: tmpdir
  doc: 'scratch directory to use (default: <output prefix>.tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-gsimplifier
