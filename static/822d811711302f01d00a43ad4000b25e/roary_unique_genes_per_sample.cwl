class: CommandLineTool
id: roary_unique_genes_per_sample.cwl
inputs:
- id: in_output_filename
  doc: output filename [unique_genes_per_sample.tsv]
  type: File?
  inputBinding:
    prefix: -o
- id: in_clusters_filename
  doc: clusters filename [clustered_proteins]
  type: File?
  inputBinding:
    prefix: -c
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [unique_genes_per_sample.tsv]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- roary-unique_genes_per_sample
