#!/usr/bin/env cwl-runner

baseCommand:
- padding-fastq.py
class: CommandLineTool
cwlVersion: v1.0
id: padding-fastq.py
inputs:
- doc: The input file (in FASTQ format) containing the short reads to be processed.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file containing the short reads where the reads, shorted than
    '--size', are padding using ' --nucleotide'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The character to be use for padding. Default is 'N'.
  id: nucleotide
  inputBinding:
    prefix: --nucleotide
  type: string
- doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold will be padded. Reads longer than the threshold will be trimmed
    from 3 end. Default is '0'.
  id: size
  inputBinding:
    prefix: --size
  type: long
