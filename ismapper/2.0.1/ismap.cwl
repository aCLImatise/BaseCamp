#!/usr/bin/env cwl-runner

baseCommand:
- ismap.py
class: CommandLineTool
cwlVersion: v1.0
id: ismap.py
inputs:
- doc: Paired end reads for analysing (can be gzipped)
  id: reads
  inputBinding:
    prefix: --reads
  type:
    items: string
    type: array
- doc: 'Multifasta file for query gene(s) (eg: insertion sequence) that will be mapped
    to.'
  id: queries
  inputBinding:
    prefix: --queries
  type:
    items: string
    type: array
- doc: Reference genome for typing against in genbank format
  id: reference
  inputBinding:
    prefix: --reference
  type:
    items: string
    type: array
- doc: Location for all output files (default is current directory).
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
- doc: Prefix for log file. If not supplied, prefix will be current date and time.
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: Display extended help
  id: help_all
  inputBinding:
    prefix: --help_all
  type: string
