class: CommandLineTool
id: bash5tools.py.cwl
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
- id: outfile_prefix
  doc: output filename prefix [None]
  type: string
  inputBinding:
    prefix: --outFilePrefix
- id: read_type
  doc: read type (ccs, subreads, or unrolled) []
  type: string
  inputBinding:
    prefix: --readType
- id: out_type
  doc: output file type (fasta, fastq) [fasta]
  type: string
  inputBinding:
    prefix: --outType
- id: minlength
  doc: min read length [0]
  type: long
  inputBinding:
    prefix: --minLength
- id: min_read_score
  doc: min read score, valid only with --readType={unrolled,subreads} [0]
  type: long
  inputBinding:
    prefix: --minReadScore
- id: min_passes
  doc: min number of CCS passes, valid only with --readType=ccs [0]
  type: long
  inputBinding:
    prefix: --minPasses
outputs: []
cwlVersion: v1.1
baseCommand:
- bash5tools.py
