class: CommandLineTool
id: analyze_exon_exon_mappings.py.cwl
inputs:
- id: input
  doc: The input file in BOWTIE MAP format where the rows are sorted by the column
    containing the reference sequence, which is gene-gene,transcript-transcript, exon-exon.
  type: string
  inputBinding:
    prefix: --input
- id: input_hugo
  doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names.
  type: string
  inputBinding:
    prefix: --input_hugo
- id: output
  doc: The output file containing the summary of the reads mapping on the exon-exon
    junctions.
  type: string
  inputBinding:
    prefix: --output
- id: output_henrik
  doc: The output file containing extra information regarding the reads' mappings
    on the exon-exon junctions.
  type: string
  inputBinding:
    prefix: --output_henrik
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze_exon-exon_mappings.py
