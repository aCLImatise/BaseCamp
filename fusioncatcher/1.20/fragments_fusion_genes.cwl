#!/usr/bin/env cwl-runner

baseCommand:
- fragments_fusion_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: fragments_fusion_genes.py
inputs:
- doc: Input file containing preliminary fusion genes and the supporting paired-reads.
  id: fusion_reads
  inputBinding:
    prefix: --fusion-reads
  type: string
- doc: Preliminary fusion genes which have the number of paired-reads strictly less
    than this value will be written in the output. Default is '0'.
  id: minimum
  inputBinding:
    prefix: --minimum
  type: long
- doc: The output file containing the preliminary fusion genes which have supporting
    paired-reads stricly less the given minimum value.
  id: fragments
  inputBinding:
    prefix: --fragments
  type: string
