class: CommandLineTool
id: extractUnmappedSubreads.py.cwl
inputs:
- id: in_verbose
  doc: 'Set the verbosity level (default: None)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean?
  inputBinding:
    prefix: --profile
- id: in_debug
  doc: 'Catch exceptions in debugger (requires ipdb) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_fast_a
  doc: a fasta file containing all subreads.
  type: string
  inputBinding:
    position: 0
- id: in_cmp_doth_five
  doc: input cmp.h5 files.
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extractUnmappedSubreads.py
