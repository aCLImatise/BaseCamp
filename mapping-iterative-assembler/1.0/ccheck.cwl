class: CommandLineTool
id: ccheck.cwl
inputs:
- id: al_nm_aln
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: 'FASTA file with the likely contaminant (default: builtin mt311)'
  type: File
  inputBinding:
    prefix: --reference
- id: ancient
  doc: Treat DNA as ancient (i.e. likely deaminated)
  type: boolean
  inputBinding:
    prefix: --ancient
- id: transversions
  doc: Treat only transversions as diagnostic
  type: boolean
  inputBinding:
    prefix: --transversions
- id: span
  doc: Look only at range from M to N
  type: string
  inputBinding:
    prefix: --span
- id: num_pos
  doc: 'Require N diagnostic sites in a single read (default: 1)'
  type: string
  inputBinding:
    prefix: --numpos
- id: force
  doc: Do not look for a higher numbered .maln
  type: boolean
  inputBinding:
    prefix: --force
- id: table
  doc: Output as tables (easier for scripts, harder on the eyes)
  type: boolean
  inputBinding:
    prefix: --table
- id: verbose
  doc: Increase verbosity level (can be repeated)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ccheck
