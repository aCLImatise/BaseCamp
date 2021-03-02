class: CommandLineTool
id: search_fusion_gene.cwl
inputs:
- id: in_gene_annotation_file
  doc: ':          gene annotation file name'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_fusion_junction_file
  doc: ':          fusion junction file name'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_f_header
  doc: ':   skip header of fusion junction file'
  type: boolean?
  inputBinding:
    prefix: -f_header
- id: in_normal_junction_file
  doc: ':          normal junction file name'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_n_header
  doc: ':   skip header of normal junction file'
  type: boolean?
  inputBinding:
    prefix: -n_header
- id: in_output_file_name
  doc: ':          output file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_comparison_range_default
  doc: ':          comparison range, default [0]'
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: ':          output file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- search_fusion_gene
