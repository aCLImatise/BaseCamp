class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/match_w_annotation.py.cwl
inputs:
- id: min_query_overlap
  doc: 'Minimum query overlap, in ratio (default: 0.0)'
  type: long
  inputBinding:
    prefix: --min_query_overlap
- id: min_gene_overlap_bp
  doc: 'Minimum gene overlap, in bp (default: 0 bp)'
  type: long
  inputBinding:
    prefix: --min_gene_overlap_bp
- id: min_gene_overlap
  doc: 'Minimum gene overlap, in ratio (default: 0.5)'
  type: long
  inputBinding:
    prefix: --min_gene_overlap
- id: gene_annotation_file
  doc: Gene Annotation Text File
  type: string
  inputBinding:
    position: 0
- id: input_fast_a
  doc: Input Fasta
  type: string
  inputBinding:
    position: 1
- id: input_sam
  doc: Input SAM
  type: string
  inputBinding:
    position: 2
- id: output_prefix
  doc: Output Prefix
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- match_w_annotation.py
