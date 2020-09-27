class: CommandLineTool
id: match_w_annotation.py.cwl
inputs:
- id: in_min_query_overlap
  doc: 'Minimum query overlap, in ratio (default: 0.0)'
  type: long
  inputBinding:
    prefix: --min_query_overlap
- id: in_min_gene_overlap_bp
  doc: 'Minimum gene overlap, in bp (default: 0 bp)'
  type: long
  inputBinding:
    prefix: --min_gene_overlap_bp
- id: in_min_gene_overlap
  doc: "Minimum gene overlap, in ratio (default: 0.5)\n"
  type: long
  inputBinding:
    prefix: --min_gene_overlap
- id: in_gene_annotation_file
  doc: Gene Annotation Text File
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_a
  doc: Input Fasta
  type: string
  inputBinding:
    position: 1
- id: in_input_sam
  doc: Input SAM
  type: string
  inputBinding:
    position: 2
- id: in_output_prefix
  doc: Output Prefix
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- match_w_annotation.py
