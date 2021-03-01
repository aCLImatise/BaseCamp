class: CommandLineTool
id: falconc_stats_assembly.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_fastafn_string_required
  doc: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n\
    .fai)\n"
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- stats-assembly
