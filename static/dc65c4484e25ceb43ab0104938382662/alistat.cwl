class: CommandLineTool
id: alistat.cwl
inputs:
- id: in_report_persequence_info
  doc: ': report per-sequence info, not just a summary'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_fast_estimate_average
  doc: ': fast: estimate average %id by sampling (not compatible with -a)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_quiet_suppress_verbose
  doc: ': quiet: suppress verbose header'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_consensus
  doc: ": write majority rule consensus sequence(s) in FASTA\nformat to file <f>"
  type: File?
  inputBinding:
    prefix: --consensus
- id: in_ident_mx
  doc: ': save a report on all NxN pairwise identities to file <f>'
  type: File?
  inputBinding:
    prefix: --identmx
- id: in_in_format
  doc: ": specify alignment file format <s>\nallowed formats: SELEX, MSF, Clustal,\
    \ a2m, PHYLIP\n"
  type: File?
  inputBinding:
    prefix: --informat
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- alistat
