class: CommandLineTool
id: merge_sam.py.cwl
inputs:
- id: input
  doc: The input file in SAM format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output file in SAM format.
  type: string
  inputBinding:
    prefix: --output
- id: forward_reverse
  doc: By default a proper pair is considered the one where both reads which form
    a pair are on the same strand (e.g. output of 'bowtie --ff'). If this is set then
    a proper pair is considered when both reads are mapping on opposite strands. Default
    is 'False'.
  type: boolean
  inputBinding:
    prefix: --forward-reverse
- id: mismatches_long
  doc: Maximum number of mismatches accepted per read for read sequences strictly
    longer than the value specified by '--mismatches-long'. If the number of mismatches
    in the input read is strictly larger than this number of mismaches given here
    then the read is filtered out. Default is '10000'.
  type: string
  inputBinding:
    prefix: --mismatches-long
- id: mismatches_short
  doc: Maximum number of mismatches accepted per read for read sequences shorter than
    (including) the value specified by '--mismatches-short'. If the number of mismatches
    in the input read is strictly larger than this number of mismaches given here
    then the read is filtered out. Default is '10000'.
  type: string
  inputBinding:
    prefix: --mismatches-short
- id: short
  doc: This value is used to define the upper limit of a 'short' read, for specifying
    the mismatches. Default is '20'.
  type: string
  inputBinding:
    prefix: --short
outputs: []
cwlVersion: v1.1
baseCommand:
- merge-sam.py
