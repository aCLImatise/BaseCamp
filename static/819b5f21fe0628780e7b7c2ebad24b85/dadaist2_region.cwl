class: CommandLineTool
id: dadaist2_region.cwl
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
- id: in_primer_for
  doc: 'Sequence of the forward primer [default: CCTACGGGNGGCWGCAG]'
  type: string?
  inputBinding:
    prefix: --primer-for
- id: in_primer_rev
  doc: 'Sequence of the reverse primer [default: GGACTACHVGGGTATCTAATCC]'
  type: string?
  inputBinding:
    prefix: --primer-rev
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
- id: in_primer_t_hrs
  doc: 'Minimum amount of matches over total length [default: 1.0]'
  type: double?
  inputBinding:
    prefix: --primer-thrs
- id: in_primer_mismatches
  doc: 'Maximum number of missmatches allowed [default: 0]'
  type: long?
  inputBinding:
    prefix: --primer-mismatches
- id: in_primer_min_matches
  doc: 'Minimum numer of matches required [default: 8]'
  type: long?
  inputBinding:
    prefix: --primer-min-matches
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
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ampli_check
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.8.12--hed695b0_0
cwlVersion: v1.1
baseCommand:
- dadaist2-region
