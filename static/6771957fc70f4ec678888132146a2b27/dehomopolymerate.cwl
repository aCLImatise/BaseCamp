class: CommandLineTool
id: dehomopolymerate.cwl
inputs:
- id: in_print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_quiet_mode_nonerror
  doc: Quiet mode; not non-error output
  type: boolean
  inputBinding:
    prefix: -q
- id: in_output_fasta_fastq
  doc: Output FASTA not FASTQ
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output_raw_line
  doc: Output RAW one line per sequence
  type: boolean
  inputBinding:
    prefix: -w
- id: in_discard_output_sequences
  doc: Discard output sequences shorter then L bp
  type: string
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dehomopolymerate
