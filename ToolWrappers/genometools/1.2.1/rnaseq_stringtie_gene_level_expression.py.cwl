class: CommandLineTool
id: rnaseq_stringtie_gene_level_expression.py.cwl
inputs:
- id: in_string_tie_file
  doc: Path of the StringTie output file .
  type: File?
  inputBinding:
    prefix: --stringtie-file
- id: in_gene_file
  doc: File containing a list of protein-coding genes.
  type: File?
  inputBinding:
    prefix: --gene-file
- id: in_no_novel_transcripts
  doc: Ignore novel transcripts.
  type: boolean?
  inputBinding:
    prefix: --no-novel-transcripts
- id: in_output_file
  doc: Path of output file.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Only output errors and warnings.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_extracts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gene_level
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_expression
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_string_tie
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_output_dot
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_tie_file
  doc: Path of the StringTie output file .
  type: File?
  outputBinding:
    glob: $(inputs.in_string_tie_file)
- id: out_output_file
  doc: Path of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rnaseq_stringtie_gene_level_expression.py
