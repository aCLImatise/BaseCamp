class: CommandLineTool
id: spades_read_filter.cwl
inputs:
- id: in_km_er
  doc: K-mer length
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_cov
  doc: Median kmer count threshold (read pairs, s.t. kmer count median for BOTH reads
    LESS OR EQUAL to this value will be ignored)
  type: string?
  inputBinding:
    prefix: --cov
- id: in_dataset
  doc: Dataset description (in YAML)
  type: string?
  inputBinding:
    prefix: --dataset
- id: in_threads
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: --threads
- id: in_outdir
  doc: Output directory to use
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory to use
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spades-read-filter
