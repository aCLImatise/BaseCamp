class: CommandLineTool
id: rnaseq_stringtie_gene_level_expression.py.cwl
inputs:
- id: extracts
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_level
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: data
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: string_tie
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: string_tie_file
  doc: Path of the StringTie output file .
  type: File
  inputBinding:
    prefix: --stringtie-file
- id: gene_file
  doc: File containing a list of protein-coding genes.
  type: File
  inputBinding:
    prefix: --gene-file
- id: no_novel_transcripts
  doc: Ignore novel transcripts.
  type: boolean
  inputBinding:
    prefix: --no-novel-transcripts
- id: output_file
  doc: Path of output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaseq_stringtie_gene_level_expression.py
