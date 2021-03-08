class: CommandLineTool
id: fu_primers.cwl
inputs:
- id: in_first_pair
  doc: First sequence in pair
  type: string?
  inputBinding:
    prefix: --first-pair
- id: in_second_pair
  doc: Second sequence in pair (can be guessed)
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
- id: in_min_len
  doc: 'Minimum sequence length after trimming [default: 50]'
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_primer_t_hrs
  doc: 'Minimum amount of matches over total length [default: 0.8]'
  type: double?
  inputBinding:
    prefix: --primer-thrs
- id: in_primer_mismatches
  doc: 'Maximum number of missmatches allowed [default: 2]'
  type: long?
  inputBinding:
    prefix: --primer-mismatches
- id: in_primer_min_matches
  doc: 'Minimum numer of matches required [default: 8]'
  type: long?
  inputBinding:
    prefix: --primer-min-matches
- id: in_primer_pos_margin
  doc: 'Number of bases from the extremity of the sequence allowed [default: 2]'
  type: long?
  inputBinding:
    prefix: --primer-pos-margin
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
  dockerPull: quay.io/biocontainers/seqfu:0.8.10--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fu-primers
