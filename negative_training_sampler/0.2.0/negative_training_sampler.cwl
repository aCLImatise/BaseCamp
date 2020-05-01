#!/usr/bin/env cwl-runner

baseCommand:
- negative_training_sampler
class: CommandLineTool
cwlVersion: v1.0
id: negative_training_sampler
inputs:
- doc: Input bed file with labeled regions  [required]
  id: label_file
  inputBinding:
    prefix: --label-file
  type: File
- doc: Input genome reference in fasta format [required]
  id: reference_file
  inputBinding:
    prefix: --reference-file
  type: File
- doc: Input genome file of reference  [required]
  id: genome_file
  inputBinding:
    prefix: --genome-file
  type: File
- doc: Path to output file.
  id: output_file
  inputBinding:
    prefix: --output_file
  type: File
- doc: Output will be bgzipped.
  id: b_gzip
  inputBinding:
    prefix: --bgzip
  type: boolean
- doc: Write logging to this file.
  id: log
  inputBinding:
    prefix: --log
  type: File
- doc: Will print verbose messages.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'number of used cores default: 1'
  id: cores
  inputBinding:
    prefix: --cores
  type: long
- doc: 'amount of memory per core (e.g. 2 cores * 2GB = 4GB) default: 2GB'
  id: memory
  inputBinding:
    prefix: --memory
  type: string
