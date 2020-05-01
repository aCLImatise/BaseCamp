#!/usr/bin/env cwl-runner

baseCommand:
- remove_reads_exon_exon_map.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_reads_exon_exon_map.py
inputs:
- doc: The input MAP file containing the reads mapping on exon-exon junctions.
  id: input_exon_exon
  inputBinding:
    prefix: --input_exon_exon
  type: string
- doc: The input MAP file containing the reads mapping on transcriptome.
  id: input_transcriptome
  inputBinding:
    prefix: --input_transcriptome
  type: string
- doc: Only reads which form a pair are kept for further analysis (i.e. one read maps
    on one of the known                       transcripts of the genes involved in
    the candidate                       fusion and its corresponding mate maps on
    fusion point which is the exon-exon junction). Default is False.
  id: only_pairs
  inputBinding:
    prefix: --only_pairs
  type: boolean
- doc: The output text file containing all reads mapping on the exon-exon junctions
    from the input MAP file except the ones which have been removed (because their
    mates map on other genes than those from which the exons which form the exon-exon
    junction).
  id: output_exon_exon
  inputBinding:
    prefix: --output_exon_exon
  type: string
