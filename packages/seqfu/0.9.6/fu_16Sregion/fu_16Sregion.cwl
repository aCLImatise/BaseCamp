class: CommandLineTool
id: fu_16Sregion.cwl
inputs:
- id: in_first_pair
  doc: First sequence in pair
  type: string?
  inputBinding:
    prefix: --first-pair
- id: in_second_pair
  doc: Second sequence in pair (can be inferred)
  type: string?
  inputBinding:
    prefix: --second-pair
- id: in_reference
  doc: FASTA file with a reference sequence, E. coli 16S by default
  type: File?
  inputBinding:
    prefix: --reference
- id: in_regions
  doc: Regions names in JSON format, E. coli variable regions by default
  type: File?
  inputBinding:
    prefix: --regions
- id: in_pattern_r_one
  doc: 'Tag in first pairs filenames [default: auto]'
  type: long?
  inputBinding:
    prefix: --pattern-R1
- id: in_pattern_r_two
  doc: 'Tag in second pairs filenames [default: auto]'
  type: long?
  inputBinding:
    prefix: --pattern-R2
- id: in_pool_size
  doc: 'Number of sequences/pairs to process per thread [default: 20]'
  type: long?
  inputBinding:
    prefix: --pool-size
- id: in_min_score
  doc: 'Minimum alignment score [default: 80]'
  type: long?
  inputBinding:
    prefix: --min-score
- id: in_max_reads
  doc: 'Parse up to INT reads then quit [default: 1000]'
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_se
  doc: Force single end
  type: boolean?
  inputBinding:
    prefix: --se
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.6--h38613fd_0
cwlVersion: v1.1
baseCommand:
- fu-16Sregion
