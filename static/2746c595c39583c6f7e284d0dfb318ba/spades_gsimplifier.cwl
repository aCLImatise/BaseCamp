class: CommandLineTool
id: spades_gsimplifier.cwl
inputs:
- id: in_gfa
  doc: 'produce GFA output (default: true)'
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_spades_gp
  doc: "output graph pack in SPAdes internal format (default: false). Recommended\
    \ if bulges are removed to improve further read mapping. In case GFA output is\
    \ required with graph pack specify '--gfa'"
  type: string?
  inputBinding:
    prefix: --spades-gp
- id: in_use_cov_ratios
  doc: 'enable procedures based on unitig coverage ratios (default: false)'
  type: boolean?
  inputBinding:
    prefix: --use-cov-ratios
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long?
  inputBinding:
    prefix: -k
- id: in_read_length
  doc: read length
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_coverage
  doc: "estimated average (k+1-mer) bin coverage (default: 0.) or 'auto' (works only\
    \ with '-d/--dead-ends' provided)"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_profile
  doc: file with edge coverage profiles across multiple samples
  type: File?
  inputBinding:
    prefix: --profile
- id: in_stop_codons
  doc: file stop codon positions
  type: File?
  inputBinding:
    prefix: --stop-codons
- id: in_dead_ends
  doc: while processing a subgraph -- file listing edges which are dead-ends in the
    original graph
  type: File?
  inputBinding:
    prefix: --dead-ends
- id: in_tmpdir
  doc: "scratch directory to use (default: <output prefix>.tmp)\n"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tmpdir
  doc: "scratch directory to use (default: <output prefix>.tmp)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_tmpdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-gsimplifier
