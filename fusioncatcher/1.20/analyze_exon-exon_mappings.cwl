#!/usr/bin/env cwl-runner

baseCommand:
- analyze_exon-exon_mappings.py
class: CommandLineTool
cwlVersion: v1.0
id: analyze_exon-exon_mappings.py
inputs:
- doc: The input file in BOWTIE MAP format where the rows are sorted by the column
    containing the reference sequence, which is gene-gene,transcript-transcript, exon-exon.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input database used for linking ENSEMBL GENE ID to HUGO gene names.
  id: input_hugo
  inputBinding:
    prefix: --input_hugo
  type: string
- doc: The output file containing the summary of the reads mapping on the exon-exon
    junctions.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output file containing extra information regarding the reads' mappings
    on the exon-exon junctions.
  id: output_henrik
  inputBinding:
    prefix: --output_henrik
  type: string
