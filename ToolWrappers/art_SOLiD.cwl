class: CommandLineTool
id: art_SOLiD.cwl
inputs:
- id: in_read_type_amplicon
  doc: 'the read type for amplicon sequencing simulation (s:single-end, m: matepair,
    p: paired-end)'
  type: string
  inputBinding:
    prefix: -A
- id: in_use_cigar_alignment
  doc: to use CIGAR 'M' instead of '=/X' for alignment match/mismatch
  type: string
  inputBinding:
    prefix: -M
- id: in_generate_sam_file
  doc: to generate a SAM alignment file
  type: File
  inputBinding:
    prefix: -s
- id: in_random_seed_simulation
  doc: the random seed for the simulation
  type: string
  inputBinding:
    prefix: -r
- id: in_scale_factor_adjusting
  doc: the scale factor adjusting error rate (e.g., -f 0 for zero-error rate simulation)
  type: long
  inputBinding:
    prefix: -f
- id: in_users_own_read
  doc: user's own read profile for simulation
  type: string
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- art_SOLiD
