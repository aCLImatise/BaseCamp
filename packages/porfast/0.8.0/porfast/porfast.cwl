class: CommandLineTool
id: porfast.cwl
inputs:
- id: in_r_one
  doc: FASTQ file, first pair
  type: long?
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: FASTQ file, second pair
  type: long?
  inputBinding:
    prefix: --R2
- id: in_min_size
  doc: 'Minimum ORF size (aa) (default: 26)'
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_prefix
  doc: Rename reads using this prefix
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_pool_size
  doc: 'Size of the batch of reads to process per thread (default: 250)'
  type: long?
  inputBinding:
    prefix: --pool-size
- id: in_verbose
  doc: Print verbose info
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_join
  doc: Try joining paired ends
  type: boolean?
  inputBinding:
    prefix: --join
- id: in_min_overlap
  doc: 'Minimum PE overlap (default: 12)'
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_max_overlap
  doc: 'Maximum PE overlap (default: 200)'
  type: long?
  inputBinding:
    prefix: --max-overlap
- id: in_min_identity
  doc: 'Minimum sequence identity in overlap (default: 0.85)'
  type: long?
  inputBinding:
    prefix: --min-identity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/porfast:0.8.0--hed695b0_1
cwlVersion: v1.1
baseCommand:
- porfast
