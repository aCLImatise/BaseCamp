#!/usr/bin/env cwl-runner

baseCommand:
- trim_poly_tails.py
class: CommandLineTool
cwlVersion: v1.0
id: trim_poly_tails.py
inputs:
- doc: The input file in FASTQ format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file containing all the trimmed sequences.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The number of times a nucleotide specified with '-- nucleotide' should be repeated
    in order to be considered a poly Default is 9.
  id: repeats
  inputBinding:
    prefix: --repeats
  type: string
- doc: If this is specified then the reads which are having poly tails are filtered
    out (i.e. not written to the output) instead of trimming. Default is False.
  id: skip_reads
  inputBinding:
    prefix: --skip_reads
  type: boolean
- doc: If this is specified then the reads which are less than N bp will be kept,
    where N is set using '--keep- too-short-length'. Default is False.
  id: keep_too_short
  inputBinding:
    prefix: --keep-too-short
  type: boolean
- doc: The threshold used to decide when a read is too short. Default is 20.
  id: keep_too_short_length
  inputBinding:
    prefix: --keep-too-short-length
  type: string
