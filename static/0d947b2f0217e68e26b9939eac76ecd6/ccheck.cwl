class: CommandLineTool
id: ccheck.cwl
inputs:
- id: in_reference
  doc: 'FASTA file with the likely contaminant (default: builtin mt311)'
  type: File?
  inputBinding:
    prefix: --reference
- id: in_ancient
  doc: Treat DNA as ancient (i.e. likely deaminated)
  type: boolean?
  inputBinding:
    prefix: --ancient
- id: in_transversions
  doc: Treat only transversions as diagnostic
  type: boolean?
  inputBinding:
    prefix: --transversions
- id: in_span
  doc: Look only at range from M to N
  type: string?
  inputBinding:
    prefix: --span
- id: in_num_pos
  doc: 'Require N diagnostic sites in a single read (default: 1)'
  type: long?
  inputBinding:
    prefix: --numpos
- id: in_force
  doc: Do not look for a higher numbered .maln
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_table
  doc: Output as tables (easier for scripts, harder on the eyes)
  type: boolean?
  inputBinding:
    prefix: --table
- id: in_verbose
  doc: Increase verbosity level (can be repeated)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_aln_dot_mal_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ccheck
