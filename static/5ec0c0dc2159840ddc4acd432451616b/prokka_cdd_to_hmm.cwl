class: CommandLineTool
id: prokka_cdd_to_hmm.cwl
inputs:
- id: verbose
  doc: "!      Verbose output (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: srcdir
  doc: CDD download dir (default '/bio/data/cdd/latest/').
  type: string
  inputBinding:
    prefix: --srcdir
- id: lib
  doc: Subset of CDD to create (default 'COG').
  type: string
  inputBinding:
    prefix: --lib
- id: force
  doc: "!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka-cdd_to_hmm
