#!/usr/bin/env cwl-runner

baseCommand:
- o-treat-homopolymer-regions
class: CommandLineTool
cwlVersion: v1.0
id: o-treat-homopolymer-regions
inputs:
- doc: align2first output (.paf file)
  id: input_alignment
  inputBinding:
    prefix: --input-alignment
  type: string
- doc: Output FASTA file to store homopolymer-treated sequences
  id: output_fast_a
  inputBinding:
    prefix: --output-fasta
  type: string
- doc: Log file. Default, STDOUT.
  id: log
  inputBinding:
    prefix: --log
  type: string
