class: CommandLineTool
id: ../../../dehomopolymerate.cwl
inputs:
- id: print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: quiet_mode_output
  doc: Quiet mode; not non-error output
  type: boolean
  inputBinding:
    prefix: -q
- id: output_fasta_fastq
  doc: Output FASTA not FASTQ
  type: boolean
  inputBinding:
    prefix: -f
- id: output_raw_one
  doc: Output RAW one line per sequence
  type: boolean
  inputBinding:
    prefix: -w
- id: discard_output_sequences
  doc: Discard output sequences shorter then L bp
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dehomopolymerate
