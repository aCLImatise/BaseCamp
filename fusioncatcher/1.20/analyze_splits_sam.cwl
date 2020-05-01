#!/usr/bin/env cwl-runner

baseCommand:
- analyze_splits_sam.py
class: CommandLineTool
cwlVersion: v1.0
id: analyze_splits_sam.py
inputs:
- doc: The input file in PSL format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output PSL file containing the contigs with the best alignment which must
    be unique.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output text file containing ids of reads which have unmapped clippings.
  id: clipped_reads_ids
  inputBinding:
    prefix: --clipped-reads-ids
  type: string
- doc: The output text file containing reference ids on which the clipped reads are
    mapped.
  id: clipped_reads_refs
  inputBinding:
    prefix: --clipped-reads-refs
  type: string
- doc: Minimum size of clipping which will be written in the output given by '--reads-ids'.
    Default is '10'.
  id: clip_min
  inputBinding:
    prefix: --clip-min
  type: long
- doc: It removes from the string of reads ids everything what is after '__' and also
    '__'. Default is 'False'.
  id: remove_extra
  inputBinding:
    prefix: --remove-extra
  type: boolean
