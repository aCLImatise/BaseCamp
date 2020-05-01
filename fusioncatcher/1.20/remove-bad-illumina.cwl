#!/usr/bin/env cwl-runner

baseCommand:
- remove-bad-illumina.py
class: CommandLineTool
cwlVersion: v1.0
id: remove-bad-illumina.py
inputs:
- doc: The input file (in the newer Solexa FASTQ format, i.e. version 1.8 or newer)
    containing the short reads to be processed.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file containing the short reads which are marked as good by
    Illumina.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: It creates a link from the output file to the input file of type (soft,hard,copy)
    in case that no operation is done on the input file. Default is 'soft'.
  id: link
  inputBinding:
    prefix: --link
  type: string
