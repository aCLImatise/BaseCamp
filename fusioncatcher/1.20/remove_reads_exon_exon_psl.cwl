#!/usr/bin/env cwl-runner

baseCommand:
- remove_reads_exon_exon_psl.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_reads_exon_exon_psl.py
inputs:
- doc: The input PSL file (output of BLAT) containing the reads mapping gene-gene
    sequence.
  id: input_psl
  inputBinding:
    prefix: --input_psl
  type: string
- doc: The input MAP file containing the reads mapping on transcriptome.
  id: input_transcriptome
  inputBinding:
    prefix: --input_transcriptome
  type: string
- doc: The output text file containing all reads mapping on the from the input PSL
    file except the ones which have been removed (because their mates map on other
    genes than those from which form the candidate fusion).
  id: output_psl
  inputBinding:
    prefix: --output_psl
  type: string
