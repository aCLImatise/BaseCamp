class: CommandLineTool
id: bash5tools.py.cwl
inputs:
- id: in_verbose
  doc: 'Set the verbosity level (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_profile
  doc: 'Print runtime profile at exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_debug
  doc: "Catch exceptions in debugger (requires ipdb) (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_outfile_prefix
  doc: output filename prefix [None]
  type: File
  inputBinding:
    prefix: --outFilePrefix
- id: in_read_type
  doc: read type (ccs, subreads, or unrolled) []
  type: string
  inputBinding:
    prefix: --readType
- id: in_out_type
  doc: output file type (fasta, fastq) [fasta]
  type: File
  inputBinding:
    prefix: --outType
- id: in_minlength
  doc: min read length [0]
  type: long
  inputBinding:
    prefix: --minLength
- id: in_min_read_score
  doc: "min read score, valid only with\n--readType={unrolled,subreads} [0]"
  type: long
  inputBinding:
    prefix: --minReadScore
- id: in_min_passes
  doc: "min number of CCS passes, valid only with\n--readType=ccs [0]\n"
  type: long
  inputBinding:
    prefix: --minPasses
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_prefix
  doc: output filename prefix [None]
  type: File
  outputBinding:
    glob: $(inputs.in_outfile_prefix)
- id: out_out_type
  doc: output file type (fasta, fastq) [fasta]
  type: File
  outputBinding:
    glob: $(inputs.in_out_type)
cwlVersion: v1.1
baseCommand:
- bash5tools.py
