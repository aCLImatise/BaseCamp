class: CommandLineTool
id: prokka_cdd_to_hmm.cwl
inputs:
- id: in_verbose
  doc: "!      Verbose output (default '0')."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_srcdir
  doc: CDD download dir (default '/bio/data/cdd/latest/').
  type: string?
  inputBinding:
    prefix: --srcdir
- id: in_lib
  doc: Subset of CDD to create (default 'COG').
  type: string?
  inputBinding:
    prefix: --lib
- id: in_force
  doc: "!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."
  type: boolean?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prokka-cdd_to_hmm
