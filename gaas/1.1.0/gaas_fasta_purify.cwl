#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_purify.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_purify.pl
inputs:
- doc: Input fasta file containing DNA sequences.
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: 'Integer. Filter the sequence shorter to this size (in bp). Default: 1000'
  id: size
  inputBinding:
    prefix: --size
  type: string
- doc: '[OPTIONAL] Output directory where diffrent output files will be written. If
    no output is specified, the result will written to STDOUT.'
  id: output
  inputBinding:
    prefix: --output
  type: string
