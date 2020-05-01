#!/usr/bin/env cwl-runner

baseCommand:
- breakseq2_gen_bplib.py
class: CommandLineTool
cwlVersion: v1.0
id: breakseq2_gen_bplib.py
inputs:
- doc: 'Reference FASTA (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Output FASTA to generate. Leave unspecified for stdout (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'List of chromosomes to process (default: [])'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Log level (default: INFO)'
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: 'Breakpoint GFF input (default: None)'
  id: bp_lib_gff
  inputBinding:
    prefix: --bplib_gff
  type: string
- doc: 'Junction length (default: 200)'
  id: junction_length
  inputBinding:
    prefix: --junction_length
  type: string
- doc: '{1,2} Version of breakpoint library format to use (default: 2)'
  id: format_version
  inputBinding:
    prefix: --format_version
  type: boolean
