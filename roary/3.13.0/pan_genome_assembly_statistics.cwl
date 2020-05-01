#!/usr/bin/env cwl-runner

baseCommand:
- pan_genome_assembly_statistics
class: CommandLineTool
cwlVersion: v1.0
id: pan_genome_assembly_statistics
inputs:
- doc: ''
  id: gene_presence_absence_csv
  inputBinding:
    position: 0
  type: string
- doc: 'number of threads [1]        '
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: output filename [assembly_statistics.csv]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: percentage of isolates a gene must be in to be core [99]
  id: cd
  inputBinding:
    prefix: -cd
  type: double
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: print version and exit
  id: w
  inputBinding:
    prefix: -w
  type: boolean
