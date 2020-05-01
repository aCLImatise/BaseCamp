#!/usr/bin/env cwl-runner

baseCommand:
- annotate_hits_pyseer
class: CommandLineTool
cwlVersion: v1.0
id: annotate_hits_pyseer
inputs:
- doc: Kmers file, filtered output from SEER
  id: km_ers
  inputBinding:
    position: 0
  type: string
- doc: File of reference annotations. First column fasta sequence, second column gff
    annotation, third column 'ref' or 'draft'
  id: references
  inputBinding:
    position: 1
  type: string
- doc: Output file
  id: output
  inputBinding:
    position: 2
  type: string
- doc: Location of bwa executable [default=bwa]
  id: bwa
  inputBinding:
    prefix: --bwa
  type: string
- doc: Directory to store temporary files [default=./]
  id: tmp_prefix
  inputBinding:
    prefix: --tmp-prefix
  type: string
