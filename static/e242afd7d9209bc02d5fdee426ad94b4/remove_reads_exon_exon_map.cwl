class: CommandLineTool
id: remove_reads_exon_exon_map.py.cwl
inputs:
- id: input_exon_exon
  doc: The input MAP file containing the reads mapping on exon-exon junctions.
  type: string
  inputBinding:
    prefix: --input_exon_exon
- id: input_transcriptome
  doc: The input MAP file containing the reads mapping on transcriptome.
  type: string
  inputBinding:
    prefix: --input_transcriptome
- id: only_pairs
  doc: Only reads which form a pair are kept for further analysis (i.e. one read maps
    on one of the known                       transcripts of the genes involved in
    the candidate                       fusion and its corresponding mate maps on
    fusion point which is the exon-exon junction). Default is False.
  type: boolean
  inputBinding:
    prefix: --only_pairs
- id: output_exon_exon
  doc: The output text file containing all reads mapping on the exon-exon junctions
    from the input MAP file except the ones which have been removed (because their
    mates map on other genes than those from which the exons which form the exon-exon
    junction).
  type: string
  inputBinding:
    prefix: --output_exon_exon
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_reads_exon_exon_map.py
