class: CommandLineTool
id: remove_reads_exon_exon_psl.py.cwl
inputs:
- id: input_psl
  doc: The input PSL file (output of BLAT) containing the reads mapping gene-gene
    sequence.
  type: string
  inputBinding:
    prefix: --input_psl
- id: input_transcriptome
  doc: The input MAP file containing the reads mapping on transcriptome.
  type: string
  inputBinding:
    prefix: --input_transcriptome
- id: output_psl
  doc: The output text file containing all reads mapping on the from the input PSL
    file except the ones which have been removed (because their mates map on other
    genes than those from which form the candidate fusion).
  type: string
  inputBinding:
    prefix: --output_psl
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_reads_exon_exon_psl.py
