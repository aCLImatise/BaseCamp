#!/usr/bin/env cwl-runner

baseCommand:
- merge-sam.py
class: CommandLineTool
cwlVersion: v1.0
id: merge-sam.py
inputs:
- doc: The input file in SAM format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output file in SAM format.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: By default a proper pair is considered the one where both reads which form
    a pair are on the same strand (e.g. output of 'bowtie --ff'). If this is set then
    a proper pair is considered when both reads are mapping on opposite strands. Default
    is 'False'.
  id: forward_reverse
  inputBinding:
    prefix: --forward-reverse
  type: boolean
- doc: Maximum number of mismatches accepted per read for read sequences strictly
    longer than the value specified by '--mismatches-long'. If the number of mismatches
    in the input read is strictly larger than this number of mismaches given here
    then the read is filtered out. Default is '10000'.
  id: mismatches_long
  inputBinding:
    prefix: --mismatches-long
  type: string
- doc: Maximum number of mismatches accepted per read for read sequences shorter than
    (including) the value specified by '--mismatches-short'. If the number of mismatches
    in the input read is strictly larger than this number of mismaches given here
    then the read is filtered out. Default is '10000'.
  id: mismatches_short
  inputBinding:
    prefix: --mismatches-short
  type: string
- doc: This value is used to define the upper limit of a 'short' read, for specifying
    the mismatches. Default is '20'.
  id: short
  inputBinding:
    prefix: --short
  type: string
