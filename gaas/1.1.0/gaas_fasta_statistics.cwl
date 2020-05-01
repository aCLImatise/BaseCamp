#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_statistics.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_statistics.pl
inputs:
- doc: Input fasta file containing DNA sequences.
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: '[OPTIONAL] Output directory where diffrent output files will be written. If
    no output is specified, the result will written to STDOUT.'
  id: output
  inputBinding:
    prefix: --output
  type: string
