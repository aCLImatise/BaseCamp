class: CommandLineTool
id: hp_ph_parser.cwl
inputs:
- id: in_haplotypes_fa
  doc: Haplotype file created by PredictHaplo.
  type: File?
  inputBinding:
    prefix: --haplotypes_fa
- id: in_outdir
  doc: 'Output directory. (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Prefix to add to sequence names
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_keep_gaps
  doc: 'Do not remove gaps from alignment (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_gaps
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Append console output to this file
  type: File?
  inputBinding:
    prefix: --logfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory. (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Append console output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hp_ph_parser
