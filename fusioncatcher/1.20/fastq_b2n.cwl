#!/usr/bin/env cwl-runner

baseCommand:
- fastq_b2n.py
class: CommandLineTool
cwlVersion: v1.0
id: fastq_b2n.py
inputs:
- doc: The input file (in FASTQ format) containing the short reads to be processed.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file containing the short reads where the nucleotides with
    low quality score 'B' have been converted to ambigous nucleotide N.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: By default the only tails of B quality are removed. If this is used then the
    first occurence of B is used to trim the read.
  id: find
  inputBinding:
    prefix: --find
  type: boolean
- doc: By default the ambigous nucleotides are not convert to As. If this is set then
    all ambigous nucleotides will be converted to As.
  id: ambiguous
  inputBinding:
    prefix: --ambiguous
  type: boolean
- doc: By default read qualities are in Illumina v1.5 format and the character 'B'
    is used to search qualities. If this is used than the character '#' (that is B
    in Sanger format) is used to search the qualities.
  id: sanger
  inputBinding:
    prefix: --sanger
  type: boolean
- doc: The character to be use for replacing the nucleotide which have the quality
    score Q2. Default is 'N'.
  id: replacement
  inputBinding:
    prefix: --replacement
  type: string
- doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold (if the trimming of Bs would be done) are removed. Default is '0'.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
