#!/usr/bin/env cwl-runner

baseCommand:
- rnaseq_stringtie_gene_level_expression.py
class: CommandLineTool
cwlVersion: v1.0
id: rnaseq_stringtie_gene_level_expression.py
inputs:
- doc: ''
  id: extracts
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: gene_level
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: expression
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: data
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: from
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: string_tie
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 6
  type: string
- doc: Path of the StringTie output file .
  id: string_tie_file
  inputBinding:
    prefix: --stringtie-file
  type: File
- doc: File containing a list of protein-coding genes.
  id: gene_file
  inputBinding:
    prefix: --gene-file
  type: File
- doc: Ignore novel transcripts.
  id: no_novel_transcripts
  inputBinding:
    prefix: --no-novel-transcripts
  type: boolean
- doc: Path of output file.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Path of log file (if specified, report to stdout AND file.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: File
- doc: Only output errors and warnings.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Enable verbose output. Ignored if --quiet is specified.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
