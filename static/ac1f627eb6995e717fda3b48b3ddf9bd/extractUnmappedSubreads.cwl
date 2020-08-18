class: CommandLineTool
id: ../../../extractUnmappedSubreads.py.cwl
inputs:
- id: verbose
  doc: 'Set the verbosity level (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: debug
  doc: 'Catch exceptions in debugger (requires ipdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: fast_a
  doc: a fasta file containing all subreads.
  type: string
  inputBinding:
    position: 0
- id: cmp_doth_five
  doc: input cmp.h5 files.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- extractUnmappedSubreads.py
